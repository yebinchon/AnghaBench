
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ byte ;
struct TYPE_6__ {int Id; } ;
struct TYPE_7__ {int req_in; int req_in_start; scalar_t__* RBuffer; TYPE_2__ Sig; int sig_remove_id; TYPE_1__* adapter; } ;
struct TYPE_5__ {scalar_t__ adapter_disabled; } ;
typedef TYPE_3__ PLCI ;


 int PUT_WORD (scalar_t__*,int) ;
 scalar_t__ REMOVE ;
 int dbug (int,int ) ;
 int dprintf (char*,scalar_t__) ;

__attribute__((used)) static void sig_req(PLCI *plci, byte req, byte Id)
{
  if(!plci) return;
  if(plci->adapter->adapter_disabled) return;
  dbug(1,dprintf("sig_req(%x)",req));
  if (req == REMOVE)
    plci->sig_remove_id = plci->Sig.Id;
  if(plci->req_in==plci->req_in_start) {
    plci->req_in +=2;
    plci->RBuffer[plci->req_in++] = 0;
  }
  PUT_WORD(&plci->RBuffer[plci->req_in_start], plci->req_in-plci->req_in_start-2);
  plci->RBuffer[plci->req_in++] = Id;
  plci->RBuffer[plci->req_in++] = req;
  plci->RBuffer[plci->req_in++] = 0;
  plci->req_in_start = plci->req_in;
}
