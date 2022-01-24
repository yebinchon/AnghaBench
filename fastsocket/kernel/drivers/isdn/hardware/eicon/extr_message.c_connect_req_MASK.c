#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
typedef  int word ;
typedef  int dword ;
typedef  int byte ;
struct TYPE_33__ {int length; int* info; } ;
struct TYPE_32__ {int Id; } ;
struct TYPE_31__ {int Id; int* Info_Mask; size_t u_law; TYPE_2__* plci; scalar_t__ adapter_disabled; } ;
struct TYPE_29__ {int Id; } ;
struct TYPE_30__ {int call_dir; int b_channel; int command; int number; scalar_t__ spoofed_msg; scalar_t__ Id; TYPE_4__* appl; int /*<<< orphan*/  internal_command; int /*<<< orphan*/  saved_msg; int /*<<< orphan*/  adv_nl; scalar_t__ tel; TYPE_1__ Sig; int /*<<< orphan*/  State; } ;
typedef  TYPE_2__ PLCI ;
typedef  TYPE_3__ DIVA_CAPI_ADAPTER ;
typedef  TYPE_4__ APPL ;
typedef  TYPE_5__ API_PARSE ;

/* Variables and functions */
 scalar_t__ ASSIGN ; 
 scalar_t__ FUNC0 (TYPE_3__*,TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int BC ; 
 int /*<<< orphan*/  BLOCK_PLCI ; 
 int CALL_DIR_FORCE_OUTG_NL ; 
 int CALL_DIR_ORIGINATE ; 
 int CALL_DIR_OUT ; 
 scalar_t__ CALL_REQ ; 
 int CHI ; 
 int CONFIRM ; 
 int CPN ; 
 int DSA ; 
 int /*<<< orphan*/  DSIG_ID ; 
 int ESC ; 
 int EXT_CONTROLLER ; 
 size_t FUNC1 (int*) ; 
 int HLC ; 
 scalar_t__ LISTEN_REQ ; 
 int LLC ; 
 int LLI ; 
 int /*<<< orphan*/  LOCAL_CONNECT ; 
 int OAD ; 
 int OSA ; 
 int PERM_LIST_REQ ; 
 scalar_t__ SPOOFING_REQUIRED ; 
 int UID ; 
 int _CONNECT_R ; 
 int _DISCONNECT_I ; 
 int _L1_ERROR ; 
 int _OUT_OF_PLCI ; 
 int _WRONG_IDENTIFIER ; 
 int _WRONG_MESSAGE_FORMAT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_5__*) ; 
 int FUNC3 (TYPE_2__*,TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,char*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,char*,int /*<<< orphan*/ *) ; 
 char*** cip_bc ; 
 char** cip_hlc ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static byte FUNC16(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
			PLCI *plci, APPL *appl, API_PARSE *parms)
{
  word ch;
  word i;
  word Info;
  word CIP;
  byte LinkLayer;
  API_PARSE * ai;
  API_PARSE * bp;
    API_PARSE ai_parms[5];
  word channel = 0;
  dword ch_mask;
  byte m;
  static byte esc_chi[35] = {0x02,0x18,0x01};
  static byte lli[2] = {0x01,0x00};
  byte noCh = 0;
  word dir = 0;
  byte   *p_chi = "";

  for(i=0;i<5;i++) ai_parms[i].length = 0;

  FUNC9(1,FUNC10("connect_req(%d)",parms->length));
  Info = _WRONG_IDENTIFIER;
  if(a)
  {
    if(a->adapter_disabled)
    {
      FUNC9(1,FUNC10("adapter disabled"));
      Id = ((word)1<<8)|a->Id;
      FUNC14(appl,_CONNECT_R|CONFIRM,Id,Number,"w",0);
      FUNC14(appl, _DISCONNECT_I, Id, 0, "w", _L1_ERROR);
      return false;
    }
    Info = _OUT_OF_PLCI;
    if((i=FUNC11(a)))
    {
      Info = 0;
      plci = &a->plci[i-1];
      plci->appl = appl;
      plci->call_dir = CALL_DIR_OUT | CALL_DIR_ORIGINATE;
      /* check 'external controller' bit for codec support */
      if(Id & EXT_CONTROLLER)
      {
        if(FUNC0(a, plci, appl, 0) )
        {
          plci->Id = 0;
          FUNC14(appl, _CONNECT_R|CONFIRM, Id, Number, "w", _WRONG_IDENTIFIER);
          return 2;
        }
      }
      ai = &parms[9];
      bp = &parms[5];
      ch = 0;
      if(bp->length)LinkLayer = bp->info[3];
      else LinkLayer = 0;
      if(ai->length)
      {
        ch=0xffff;
        if(!FUNC7(&ai->info[1],(word)ai->length,"ssss",ai_parms))
        {
          ch = 0;
          if(ai_parms[0].length)
          {
            ch = FUNC1(ai_parms[0].info+1);
            if(ch>4) ch=0; /* safety -> ignore ChannelID */
            if(ch==4) /* explizit CHI in message */
            {
              /* check length of B-CH struct */
              if((ai_parms[0].info)[3]>=1)
              {
                if((ai_parms[0].info)[4]==CHI)
                {
                  p_chi = &((ai_parms[0].info)[5]);
                }
                else
                {
                  p_chi = &((ai_parms[0].info)[3]);
                }
                if(p_chi[0]>35) /* check length of channel ID */
                {
                  Info = _WRONG_MESSAGE_FORMAT;    
                }
              }
              else Info = _WRONG_MESSAGE_FORMAT;    
            }

            if(ch==3 && ai_parms[0].length>=7 && ai_parms[0].length<=36)
            {
              dir = FUNC1(ai_parms[0].info+3);
              ch_mask = 0;
              m = 0x3f;
              for(i=0; i+5<=ai_parms[0].length; i++)
              {
                if(ai_parms[0].info[i+5]!=0)
                {
                  if((ai_parms[0].info[i+5] | m) != 0xff)
                    Info = _WRONG_MESSAGE_FORMAT;
                  else
                  {
                    if (ch_mask == 0)
                      channel = i;
                    ch_mask |= 1L << i;
                  }
                }
                m = 0;
              }
              if (ch_mask == 0)
                Info = _WRONG_MESSAGE_FORMAT;
              if (!Info)
              {
                if ((ai_parms[0].length == 36) || (ch_mask != ((dword)(1L << channel))))
                {
                  esc_chi[0] = (byte)(ai_parms[0].length - 2);
                  for(i=0; i+5<=ai_parms[0].length; i++)
                    esc_chi[i+3] = ai_parms[0].info[i+5];
                }
                else
                  esc_chi[0] = 2;
                esc_chi[2] = (byte)channel;
                plci->b_channel = (byte)channel; /* not correct for ETSI ch 17..31 */
                FUNC5(plci,LLI,lli);
                FUNC5(plci,ESC,esc_chi);
                plci->State = LOCAL_CONNECT;
                if(!dir) plci->call_dir |= CALL_DIR_FORCE_OUTG_NL;     /* dir 0=DTE, 1=DCE */
              }
            }
          }
        }
        else  Info = _WRONG_MESSAGE_FORMAT;
      }

      FUNC9(1,FUNC10("ch=%x,dir=%x,p_ch=%d",ch,dir,channel));
      plci->command = _CONNECT_R;
      plci->number = Number;
      /* x.31 or D-ch free SAPI in LinkLayer? */
      if(ch==1 && LinkLayer!=3 && LinkLayer!=12) noCh = true;
      if((ch==0 || ch==2 || noCh || ch==3 || ch==4) && !Info)
      {
        /* B-channel used for B3 connections (ch==0), or no B channel    */
        /* is used (ch==2) or perm. connection (3) is used  do a CALL    */
        if(noCh) Info = FUNC3(plci,&parms[5],2,0);    /* no resource    */
        else     Info = FUNC3(plci,&parms[5],ch,0); 
        FUNC6(plci,OAD,&parms[2]);
        FUNC6(plci,OSA,&parms[4]);
        FUNC6(plci,BC,&parms[6]);
        FUNC6(plci,LLC,&parms[7]);
        FUNC6(plci,HLC,&parms[8]);
        CIP = FUNC1(parms[0].info);
        if (a->Info_Mask[appl->Id-1] & 0x200)
        {
          /* early B3 connect (CIP mask bit 9) no release after a disc */
          FUNC5(plci,LLI,"\x01\x01");
        }
        if(FUNC1(parms[0].info)<29) {
          FUNC5(plci,BC,cip_bc[FUNC1(parms[0].info)][a->u_law]);
          FUNC5(plci,HLC,cip_hlc[FUNC1(parms[0].info)]);
        }
        FUNC5(plci,UID,"\x06\x43\x61\x70\x69\x32\x30");
        FUNC15(plci,ASSIGN,DSIG_ID);
      }
      else if(ch==1) {

        /* D-Channel used for B3 connections */
        plci->Sig.Id = 0xff;
        Info = 0;
      }

      if(!Info && ch!=2 && !noCh ) {
        Info = FUNC4(plci,&parms[5]);
        if(!Info) {
          if(!(plci->tel && !plci->adv_nl))FUNC12(plci,ASSIGN,0);
        }
      }

      if(!Info)
      {
        if(ch==0 || ch==2 || ch==3 || noCh || ch==4)
        {
          if(plci->spoofed_msg==SPOOFING_REQUIRED)
          {
            FUNC8(parms, "wsssssssss", &plci->saved_msg);
            plci->spoofed_msg = CALL_REQ;
            plci->internal_command = BLOCK_PLCI;
            plci->command = 0;
            FUNC9(1,FUNC10("Spoof"));
            FUNC13(plci);
            return false;
          }
          if(ch==4)FUNC5(plci,CHI,p_chi);
          FUNC6(plci,CPN,&parms[1]);
          FUNC6(plci,DSA,&parms[3]);
          if(noCh) FUNC5(plci,ESC,"\x02\x18\xfd");  /* D-channel, no B-L3 */
          FUNC2(plci,&parms[9]);
          if(!dir)FUNC15(plci,CALL_REQ,0);
          else
          {
            plci->command = PERM_LIST_REQ;
            plci->appl = appl;
            FUNC15(plci,LISTEN_REQ,0);
            FUNC13(plci);
            return false;
          }
        }
        FUNC13(plci);
        return false;
      }
      plci->Id = 0;
    }
  }
  FUNC14(appl,
        _CONNECT_R|CONFIRM,
        Id,
        Number,
        "w",Info);
  return 2;
}