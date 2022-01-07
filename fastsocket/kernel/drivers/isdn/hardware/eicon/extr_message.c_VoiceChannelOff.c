
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* adapter; } ;
struct TYPE_7__ {scalar_t__ AdvSignalPLCI; } ;
typedef TYPE_2__ PLCI ;


 int FTY ;
 int TEL_CTRL ;
 int add_p (TYPE_2__*,int ,char*) ;
 int adv_voice_clear_config (scalar_t__) ;
 int dbug (int,int ) ;
 int dprintf (char*) ;
 int send_req (TYPE_2__*) ;
 int sig_req (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void VoiceChannelOff(PLCI *plci)
{
  dbug(1,dprintf("ExtDevOFF"));
  add_p(plci,FTY,"\x02\x01\x08");
  sig_req(plci,TEL_CTRL,0);
  send_req(plci);
  if(plci->adapter->AdvSignalPLCI)
  {
    adv_voice_clear_config (plci->adapter->AdvSignalPLCI);
  }
}
