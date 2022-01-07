
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t byte ;
struct TYPE_6__ {int Id; } ;
struct TYPE_8__ {int req_in; int req_in_start; int* RBuffer; TYPE_2__* adapter; TYPE_1__ NL; int nl_remove_id; int Id; } ;
struct TYPE_7__ {size_t* ncci_ch; scalar_t__ adapter_disabled; } ;
typedef TYPE_3__ PLCI ;


 int PUT_WORD (int*,int) ;
 size_t REMOVE ;
 int dbug (int,int ) ;
 int dprintf (char*,int ,size_t,size_t) ;
 int ncci_remove (TYPE_3__*,int ,size_t) ;

__attribute__((used)) static void nl_req_ncci(PLCI *plci, byte req, byte ncci)
{
  if(!plci) return;
  if(plci->adapter->adapter_disabled) return;
  dbug(1,dprintf("nl_req %02x %02x %02x", plci->Id, req, ncci));
  if (req == REMOVE)
  {
    plci->nl_remove_id = plci->NL.Id;
    ncci_remove (plci, 0, (byte)(ncci != 0));
    ncci = 0;
  }
  if(plci->req_in==plci->req_in_start) {
    plci->req_in +=2;
    plci->RBuffer[plci->req_in++] = 0;
  }
  PUT_WORD(&plci->RBuffer[plci->req_in_start], plci->req_in-plci->req_in_start-2);
  plci->RBuffer[plci->req_in++] = 1;
  plci->RBuffer[plci->req_in++] = req;
  plci->RBuffer[plci->req_in++] = plci->adapter->ncci_ch[ncci];
  plci->req_in_start = plci->req_in;
}
