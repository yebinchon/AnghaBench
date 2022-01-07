
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int word ;
typedef scalar_t__ byte ;
struct TYPE_10__ {int Global_Options; } ;
struct TYPE_12__ {int AdvCodecFLAG; int scom_appl_disable; TYPE_2__* plci; TYPE_1__ profile; TYPE_2__* AdvCodecPLCI; int * AdvSignalAppl; TYPE_2__* AdvSignalPLCI; } ;
struct TYPE_11__ {void* tel; int internal_command; int spoofed_msg; int State; } ;
typedef TYPE_2__ PLCI ;
typedef TYPE_3__ DIVA_CAPI_ADAPTER ;
typedef int APPL ;


 int ADVANCED_VOICE_NOSIG ;
 int ADVANCED_VOICE_SIG ;
 void* ADV_VOICE ;
 int ASSIGN ;
 int CAI ;
 void* CODEC ;
 void* CODEC_PERMANENT ;
 int DSIG_ID ;
 int ESC ;
 int HANDSET ;
 int LLI ;
 int ON_BOARD_CODEC ;
 int PERM_COD_ASSIGN ;
 int SPOOFING_REQUIRED ;
 int UID ;
 int add_p (TYPE_2__*,int ,char*) ;
 int dbug (int,int ) ;
 int dprintf (char*,...) ;
 int get_plci (TYPE_3__*) ;
 int send_req (TYPE_2__*) ;
 int sig_req (TYPE_2__*,int ,int) ;

__attribute__((used)) static word AdvCodecSupport(DIVA_CAPI_ADAPTER *a, PLCI *plci, APPL *appl,
       byte hook_listen)
{
  word j;
  PLCI *splci;






  if(a->profile.Global_Options & HANDSET)
  {

    if(a->AdvCodecFLAG)
    {
      if(a->AdvSignalAppl!=appl || a->AdvSignalPLCI)
      {
        dbug(1,dprintf("AdvSigPlci=0x%x",a->AdvSignalPLCI));
        return 0x2001;
      }
      if(plci!=((void*)0))
      {
        a->AdvSignalPLCI = plci;
        plci->tel=ADV_VOICE;
      }
      return 0;
    }
    if((j=get_plci(a)))
    {
      splci = &a->plci[j-1];
      splci->tel = CODEC_PERMANENT;




      if(hook_listen) splci->State = ADVANCED_VOICE_SIG;
      else
      {
        splci->State = ADVANCED_VOICE_NOSIG;
        if(plci)
        {
          plci->spoofed_msg = SPOOFING_REQUIRED;
        }

      }
      if(plci!=((void*)0))
      {
        a->AdvSignalPLCI = plci;
        plci->tel=ADV_VOICE;
      }
      a->AdvSignalAppl = appl;
      a->AdvCodecFLAG = 1;
      a->AdvCodecPLCI = splci;
      add_p(splci,CAI,"\x01\x15");
      add_p(splci,LLI,"\x01\x00");
      add_p(splci,ESC,"\x02\x18\x00");
      add_p(splci,UID,"\x06\x43\x61\x70\x69\x32\x30");
      splci->internal_command = PERM_COD_ASSIGN;
      dbug(1,dprintf("Codec Assign"));
      sig_req(splci,ASSIGN,DSIG_ID);
      send_req(splci);
    }
    else
    {
      return 0x2001;
    }
  }
  else if(a->profile.Global_Options & ON_BOARD_CODEC)
  {
    if(hook_listen) return 0x300B;

    if(plci!=((void*)0)) plci->tel = CODEC;
    dbug(1,dprintf("S/SCOM codec"));



    if(!a->scom_appl_disable){
      if((j=get_plci(a))) {
        splci = &a->plci[j-1];
        add_p(splci,CAI,"\x01\x80");
        add_p(splci,UID,"\x06\x43\x61\x70\x69\x32\x30");
        sig_req(splci,ASSIGN,0xC0);
        send_req(splci);
        a->scom_appl_disable = 1;
      }
      else{
        return 0x2001;
      }
    }
  }
  else return 0x300B;

  return 0;
}
