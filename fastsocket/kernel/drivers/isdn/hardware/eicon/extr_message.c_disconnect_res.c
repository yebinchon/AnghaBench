
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int word ;
typedef int dword ;
typedef int byte ;
struct TYPE_11__ {int Id; } ;
struct TYPE_10__ {scalar_t__ State; int channels; } ;
typedef TYPE_1__ PLCI ;
typedef int DIVA_CAPI_ADAPTER ;
typedef TYPE_2__ APPL ;
typedef int API_PARSE ;


 scalar_t__ IDLE ;
 scalar_t__ INC_DIS_PENDING ;
 scalar_t__ SUSPENDING ;
 scalar_t__ c_ind_mask_empty (TYPE_1__*) ;
 int clear_c_ind_mask_bit (TYPE_1__*,int ) ;
 int dbug (int,int ) ;
 int dprintf (char*,...) ;
 int ncci_free_receive_buffers (TYPE_1__*,int ) ;
 int plci_remove (TYPE_1__*) ;
 scalar_t__ plci_remove_check (TYPE_1__*) ;

__attribute__((used)) static byte disconnect_res(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
      PLCI *plci, APPL *appl, API_PARSE *msg)
{
  dbug(1,dprintf("disconnect_res"));
  if(plci)
  {


    clear_c_ind_mask_bit (plci, (word)(appl->Id-1));
    ncci_free_receive_buffers (plci, 0);
    if(plci_remove_check(plci))
    {
      return 0;
    }
    if(plci->State==INC_DIS_PENDING
    || plci->State==SUSPENDING) {
      if(c_ind_mask_empty (plci)) {
        if(plci->State!=SUSPENDING)plci->State = IDLE;
        dbug(1,dprintf("chs=%d",plci->channels));
        if(!plci->channels) {
          plci_remove(plci);
        }
      }
    }
  }
  return 0;
}
