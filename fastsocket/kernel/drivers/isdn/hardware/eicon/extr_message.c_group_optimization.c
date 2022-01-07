
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int word ;
typedef scalar_t__ dword ;
struct TYPE_11__ {int MaxNCCI; scalar_t__ Id; } ;
struct TYPE_10__ {int group_optimization_enabled; scalar_t__* CIP_Mask; int max_plci; scalar_t__* Info_Mask; TYPE_1__* plci; } ;
struct TYPE_9__ {TYPE_8__* appl; scalar_t__ Id; } ;
typedef TYPE_1__ PLCI ;
typedef TYPE_2__ DIVA_CAPI_ADAPTER ;


 int MAX_APPL ;
 int MAX_CIP_TYPES ;
 TYPE_8__* application ;
 int clear_group_ind_mask_bit (TYPE_1__*,int) ;
 int dbug (int,int ) ;
 int dprintf (char*,...) ;
 int max_appl ;
 int set_group_ind_mask (TYPE_1__*) ;
 scalar_t__ test_c_ind_mask_bit (TYPE_1__*,int) ;

__attribute__((used)) static void group_optimization(DIVA_CAPI_ADAPTER * a, PLCI * plci)
{
  word i,j,k,busy,group_found;
  dword info_mask_group[MAX_CIP_TYPES];
  dword cip_mask_group[MAX_CIP_TYPES];
  word appl_number_group_type[MAX_APPL];
  PLCI *auxplci;

  set_group_ind_mask (plci);

  if(!a->group_optimization_enabled)
  {
    dbug(1,dprintf("No group optimization"));
    return;
  }

  dbug(1,dprintf("Group optimization = 0x%x...", a->group_optimization_enabled));

  for(i=0;i<MAX_CIP_TYPES;i++)
  {
    info_mask_group[i] = 0;
    cip_mask_group [i] = 0;
  }
  for(i=0;i<MAX_APPL;i++)
  {
    appl_number_group_type[i] = 0;
  }
  for(i=0; i<max_appl; i++)
  {
    if(application[i].Id && (application[i].MaxNCCI) > 1 && (a->CIP_Mask[i]) && (a->group_optimization_enabled ==1) )
    {
      dbug(1,dprintf("Multi-Instance capable, no optimization required"));
      return;
    }
  }
  for(i=0; i<max_appl; i++)
  {
    if(application[i].Id && a->CIP_Mask[i] )
    {
      for(k=0,busy=0; k<a->max_plci; k++)
      {
        if(a->plci[k].Id)
        {
          auxplci = &a->plci[k];
          if(auxplci->appl == &application[i])
          {
            busy = 1;
            dbug(1,dprintf("Appl 0x%x is busy",i+1));
          }
          else if(test_c_ind_mask_bit (auxplci, i))
          {
            busy = 1;
            dbug(1,dprintf("Appl 0x%x has inc. call pending",i+1));
          }
        }
      }

      for(j=0,group_found=0; j<=(MAX_CIP_TYPES) && !busy &&!group_found; j++)
      {
        if(j==MAX_CIP_TYPES)
        {
          appl_number_group_type[i] = MAX_CIP_TYPES;
          group_found=1;
          dbug(1,dprintf("Field overflow appl 0x%x",i+1));
        }
        else if( (info_mask_group[j]==a->CIP_Mask[i]) && (cip_mask_group[j]==a->Info_Mask[i]) )
        {
          appl_number_group_type[i] = j|0x80;
          group_found=1;
          dbug(1,dprintf("Group 0x%x found with appl 0x%x, CIP=0x%lx",appl_number_group_type[i],i+1,info_mask_group[j]));
        }
        else if(!info_mask_group[j])
        {
          appl_number_group_type[i] = j|0x80;
          info_mask_group[j] = a->CIP_Mask[i];
          cip_mask_group[j] = a->Info_Mask[i];
          group_found=1;
          dbug(1,dprintf("New Group 0x%x established with appl 0x%x, CIP=0x%lx",appl_number_group_type[i],i+1,info_mask_group[j]));
        }
      }
    }
  }

  for(i=0; i<max_appl; i++)
  {
    if(appl_number_group_type[i])
    {
      if(appl_number_group_type[i] == MAX_CIP_TYPES)
      {
        dbug(1,dprintf("OverflowGroup 0x%x, valid appl = 0x%x, call enabled",appl_number_group_type[i],i+1));
      }
      else
      {
        dbug(1,dprintf("Group 0x%x, valid appl = 0x%x",appl_number_group_type[i],i+1));
        for(j=i+1; j<max_appl; j++)
        {
          if(appl_number_group_type[i] == appl_number_group_type[j])
          {
            dbug(1,dprintf("Appl 0x%x is member of group 0x%x, no call",j+1,appl_number_group_type[j]));
            clear_group_ind_mask_bit (plci, j);
            appl_number_group_type[j] = 0;
          }
        }
      }
    }
    else
    {
      clear_group_ind_mask_bit (plci, i);
    }
  }

}
