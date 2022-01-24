#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int word ;
typedef  scalar_t__ byte ;
struct TYPE_10__ {int Global_Options; } ;
struct TYPE_12__ {int AdvCodecFLAG; int scom_appl_disable; TYPE_2__* plci; TYPE_1__ profile; TYPE_2__* AdvCodecPLCI; int /*<<< orphan*/ * AdvSignalAppl; TYPE_2__* AdvSignalPLCI; } ;
struct TYPE_11__ {void* tel; int /*<<< orphan*/  internal_command; int /*<<< orphan*/  spoofed_msg; int /*<<< orphan*/  State; } ;
typedef  TYPE_2__ PLCI ;
typedef  TYPE_3__ DIVA_CAPI_ADAPTER ;
typedef  int /*<<< orphan*/  APPL ;

/* Variables and functions */
 int /*<<< orphan*/  ADVANCED_VOICE_NOSIG ; 
 int /*<<< orphan*/  ADVANCED_VOICE_SIG ; 
 void* ADV_VOICE ; 
 int /*<<< orphan*/  ASSIGN ; 
 int /*<<< orphan*/  CAI ; 
 void* CODEC ; 
 void* CODEC_PERMANENT ; 
 int DSIG_ID ; 
 int /*<<< orphan*/  ESC ; 
 int HANDSET ; 
 int /*<<< orphan*/  LLI ; 
 int ON_BOARD_CODEC ; 
 int /*<<< orphan*/  PERM_COD_ASSIGN ; 
 int /*<<< orphan*/  SPOOFING_REQUIRED ; 
 int /*<<< orphan*/  UID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static word FUNC6(DIVA_CAPI_ADAPTER *a, PLCI *plci, APPL *appl,
			    byte hook_listen)
{
  word j;
  PLCI   *splci;

  /* check if hardware supports handset with hook states (adv.codec) */
  /* or if just a on board codec is supported                        */
  /* the advanced codec plci is just for internal use                */

  /* diva Pro with on-board codec:                                   */
  if(a->profile.Global_Options & HANDSET)
  {
    /* new call, but hook states are already signalled */
    if(a->AdvCodecFLAG)
    {
      if(a->AdvSignalAppl!=appl || a->AdvSignalPLCI)
      {
        FUNC1(1,FUNC2("AdvSigPlci=0x%x",a->AdvSignalPLCI));
        return 0x2001; /* codec in use by another application */
      }
      if(plci!=NULL)
      {
        a->AdvSignalPLCI = plci;
        plci->tel=ADV_VOICE;
      }
      return 0;                      /* adv codec still used */
    }
    if((j=FUNC3(a)))
    {
      splci = &a->plci[j-1];
      splci->tel = CODEC_PERMANENT;
      /* hook_listen indicates if a facility_req with handset/hook support */
      /* was sent. Otherwise if just a call on an external device was made */
      /* the codec will be used but the hook info will be discarded (just  */
      /* the external controller is in use                                 */
      if(hook_listen) splci->State = ADVANCED_VOICE_SIG;
      else
      {
        splci->State = ADVANCED_VOICE_NOSIG;
        if(plci)
        {
          plci->spoofed_msg = SPOOFING_REQUIRED;
        }
                                               /* indicate D-ch connect if  */
      }                                        /* codec is connected OK     */
      if(plci!=NULL)
      {
        a->AdvSignalPLCI = plci;
        plci->tel=ADV_VOICE;
      }
      a->AdvSignalAppl = appl;
      a->AdvCodecFLAG = true;
      a->AdvCodecPLCI = splci;
      FUNC0(splci,CAI,"\x01\x15");
      FUNC0(splci,LLI,"\x01\x00");
      FUNC0(splci,ESC,"\x02\x18\x00");
      FUNC0(splci,UID,"\x06\x43\x61\x70\x69\x32\x30");
      splci->internal_command = PERM_COD_ASSIGN;
      FUNC1(1,FUNC2("Codec Assign"));
      FUNC5(splci,ASSIGN,DSIG_ID);
      FUNC4(splci);
    }
    else
    {
      return 0x2001; /* wrong state, no more plcis */
    }
  }
  else if(a->profile.Global_Options & ON_BOARD_CODEC)
  {
    if(hook_listen) return 0x300B;               /* Facility not supported */
                                                 /* no hook with SCOM      */
    if(plci!=NULL) plci->tel = CODEC;
    FUNC1(1,FUNC2("S/SCOM codec"));
    /* first time we use the scom-s codec we must shut down the internal   */
    /* handset application of the card. This can be done by an assign with */
    /* a cai with the 0x80 bit set. Assign return code is 'out of resource'*/
    if(!a->scom_appl_disable){
      if((j=FUNC3(a))) {
        splci = &a->plci[j-1];
        FUNC0(splci,CAI,"\x01\x80");
        FUNC0(splci,UID,"\x06\x43\x61\x70\x69\x32\x30");
        FUNC5(splci,ASSIGN,0xC0);  /* 0xc0 is the TEL_ID */
        FUNC4(splci);
        a->scom_appl_disable = true;
      }
      else{
        return 0x2001; /* wrong state, no more plcis */
      }
    }
  }
  else return 0x300B;               /* Facility not supported */

  return 0;
}