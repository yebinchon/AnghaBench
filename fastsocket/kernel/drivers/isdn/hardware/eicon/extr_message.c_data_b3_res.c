
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int word ;
typedef int dword ;
typedef scalar_t__ byte ;
struct TYPE_16__ {int info; } ;
struct TYPE_15__ {int MaxBuffer; int* DataNCCI; int* DataFlags; } ;
struct TYPE_14__ {int * ncci_ch; scalar_t__ Id; } ;
struct TYPE_13__ {scalar_t__ Id; } ;
typedef TYPE_1__ PLCI ;
typedef TYPE_2__ DIVA_CAPI_ADAPTER ;
typedef TYPE_3__ APPL ;
typedef TYPE_4__ API_PARSE ;


 int GET_WORD (int ) ;
 int N_DATA_ACK ;
 scalar_t__ channel_can_xon (TYPE_1__*,int ) ;
 int channel_request_xon (TYPE_1__*,int ) ;
 int channel_xmit_xon (TYPE_1__*) ;
 int dbug (int,int ) ;
 int dprintf (char*,...) ;
 int nl_req_ncci (TYPE_1__*,int ,scalar_t__) ;

__attribute__((used)) static byte data_b3_res(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
   PLCI *plci, APPL *appl, API_PARSE *parms)
{
  word n;
  word ncci;
  word NCCIcode;

  dbug(1,dprintf("data_b3_res"));

  ncci = (word)(Id>>16);
  if(plci && ncci) {
    n = GET_WORD(parms[0].info);
    dbug(1,dprintf("free(%d)",n));
    NCCIcode = ncci | (((word) a->Id) << 8);
    if(n<appl->MaxBuffer &&
       appl->DataNCCI[n]==NCCIcode &&
       (byte)(appl->DataFlags[n]>>8)==plci->Id) {
      dbug(1,dprintf("found"));
      appl->DataNCCI[n] = 0;

      if (channel_can_xon (plci, a->ncci_ch[ncci])) {
        channel_request_xon (plci, a->ncci_ch[ncci]);
      }
      channel_xmit_xon (plci);

      if(appl->DataFlags[n] &4) {
        nl_req_ncci(plci,N_DATA_ACK,(byte)ncci);
        return 1;
      }
    }
  }
  return 0;
}
