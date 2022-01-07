
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int word ;
struct TYPE_12__ {int Id; } ;
struct TYPE_11__ {int Id; } ;
struct TYPE_13__ {int adapter; scalar_t__ notifiedcall; int * appl; scalar_t__ channels; int State; scalar_t__ Id; TYPE_2__ Sig; int tel; TYPE_1__ NL; } ;
typedef TYPE_3__ PLCI ;


 int CodecIdCheck (int ,TYPE_3__*) ;
 int IDLE ;
 scalar_t__ c_ind_mask_empty (TYPE_3__*) ;
 int channel_flow_control_remove (TYPE_3__*) ;
 int clear_b1_config (TYPE_3__*) ;
 int dbug (int,int ) ;
 int dprintf (char*,int ,...) ;
 int listen_check (int ) ;
 int ncci_remove (TYPE_3__*,int ,int) ;
 int plci_free_msg_in_queue (TYPE_3__*) ;

__attribute__((used)) static word plci_remove_check(PLCI *plci)
{
  if(!plci) return 1;
  if(!plci->NL.Id && c_ind_mask_empty (plci))
  {
    if(plci->Sig.Id == 0xff)
      plci->Sig.Id = 0;
    if(!plci->Sig.Id)
    {
      dbug(1,dprintf("plci_remove_complete(%x)",plci->Id));
      dbug(1,dprintf("tel=0x%x,Sig=0x%x",plci->tel,plci->Sig.Id));
      if (plci->Id)
      {
        CodecIdCheck(plci->adapter, plci);
        clear_b1_config (plci);
        ncci_remove (plci, 0, 0);
        plci_free_msg_in_queue (plci);
        channel_flow_control_remove (plci);
        plci->Id = 0;
        plci->State = IDLE;
        plci->channels = 0;
        plci->appl = ((void*)0);
        plci->notifiedcall = 0;
      }
      listen_check(plci->adapter);
      return 1;
    }
  }
  return 0;
}
