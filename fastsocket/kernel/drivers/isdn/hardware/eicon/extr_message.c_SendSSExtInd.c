
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t word ;
typedef int dword ;
typedef int byte ;
struct TYPE_4__ {scalar_t__ Ind; } ;
struct TYPE_5__ {int * appl; TYPE_1__ Sig; scalar_t__ State; } ;
typedef TYPE_2__ PLCI ;
typedef int APPL ;


 size_t MAX_MULTI_IE ;
 scalar_t__ NCR_FACILITY ;
 int SSEXT_REQ ;
 int _DI_MANU_ID ;
 int _DI_SSEXT_CTRL ;
 int _MANUFACTURER_I ;
 int sendf (int *,int ,int ,int ,char*,int ,int ,int*) ;

__attribute__((used)) static void SendSSExtInd(APPL * appl, PLCI * plci, dword Id, byte * * parms)
{
  word i;
  if(
   plci
   && plci->State
   && plci->Sig.Ind!=NCR_FACILITY
    )
 for(i=0;i<MAX_MULTI_IE;i++)
    {
      if(parms[i][0]<6) continue;
   if(parms[i][2]==SSEXT_REQ) continue;

   if(appl)
   {
    parms[i][0]=0;
    sendf(appl,_MANUFACTURER_I,
    Id,
    0,
    "dwS",
    _DI_MANU_ID,
    _DI_SSEXT_CTRL,
    &parms[i][3]);
   }
   else if(plci->appl)
   {
    parms[i][0]=0;
    sendf(plci->appl,_MANUFACTURER_I,
    Id,
    0,
    "dwS",
    _DI_MANU_ID,
    _DI_SSEXT_CTRL,
    &parms[i][3]);
   }
    }
}
