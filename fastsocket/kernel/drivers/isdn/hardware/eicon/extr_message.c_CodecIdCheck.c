
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ State; } ;
struct TYPE_5__ {int * AdvSignalPLCI; int * AdvSignalAppl; TYPE_2__* AdvCodecPLCI; scalar_t__ AdvCodecFLAG; } ;
typedef int PLCI ;
typedef TYPE_1__ DIVA_CAPI_ADAPTER ;


 scalar_t__ ADVANCED_VOICE_NOSIG ;
 int VoiceChannelOff (TYPE_2__*) ;
 int dbug (int,int ) ;
 int dprintf (char*) ;
 int plci_remove (TYPE_2__*) ;

__attribute__((used)) static void CodecIdCheck(DIVA_CAPI_ADAPTER *a, PLCI *plci)
{

  dbug(1,dprintf("CodecIdCheck"));

  if(a->AdvSignalPLCI == plci)
  {
    dbug(1,dprintf("PLCI owns codec"));
    VoiceChannelOff(a->AdvCodecPLCI);
    if(a->AdvCodecPLCI->State == ADVANCED_VOICE_NOSIG)
    {
      dbug(1,dprintf("remove temp codec PLCI"));
      plci_remove(a->AdvCodecPLCI);
      a->AdvCodecFLAG = 0;
      a->AdvCodecPLCI = ((void*)0);
      a->AdvSignalAppl = ((void*)0);
    }
    a->AdvSignalPLCI = ((void*)0);
  }
}
