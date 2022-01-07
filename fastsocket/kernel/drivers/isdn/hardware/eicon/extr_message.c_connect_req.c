
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


typedef int word ;
typedef int dword ;
typedef int byte ;
struct TYPE_33__ {int length; int* info; } ;
struct TYPE_32__ {int Id; } ;
struct TYPE_31__ {int Id; int* Info_Mask; size_t u_law; TYPE_2__* plci; scalar_t__ adapter_disabled; } ;
struct TYPE_29__ {int Id; } ;
struct TYPE_30__ {int call_dir; int b_channel; int command; int number; scalar_t__ spoofed_msg; scalar_t__ Id; TYPE_4__* appl; int internal_command; int saved_msg; int adv_nl; scalar_t__ tel; TYPE_1__ Sig; int State; } ;
typedef TYPE_2__ PLCI ;
typedef TYPE_3__ DIVA_CAPI_ADAPTER ;
typedef TYPE_4__ APPL ;
typedef TYPE_5__ API_PARSE ;


 scalar_t__ ASSIGN ;
 scalar_t__ AdvCodecSupport (TYPE_3__*,TYPE_2__*,TYPE_4__*,int ) ;
 int BC ;
 int BLOCK_PLCI ;
 int CALL_DIR_FORCE_OUTG_NL ;
 int CALL_DIR_ORIGINATE ;
 int CALL_DIR_OUT ;
 scalar_t__ CALL_REQ ;
 int CHI ;
 int CONFIRM ;
 int CPN ;
 int DSA ;
 int DSIG_ID ;
 int ESC ;
 int EXT_CONTROLLER ;
 size_t GET_WORD (int*) ;
 int HLC ;
 scalar_t__ LISTEN_REQ ;
 int LLC ;
 int LLI ;
 int LOCAL_CONNECT ;
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
 int add_ai (TYPE_2__*,TYPE_5__*) ;
 int add_b1 (TYPE_2__*,TYPE_5__*,int,int ) ;
 int add_b23 (TYPE_2__*,TYPE_5__*) ;
 int add_p (TYPE_2__*,int,...) ;
 int add_s (TYPE_2__*,int,TYPE_5__*) ;
 int api_parse (int*,int,char*,TYPE_5__*) ;
 int api_save_msg (TYPE_5__*,char*,int *) ;
 char*** cip_bc ;
 char** cip_hlc ;
 int dbug (int,int ) ;
 int dprintf (char*,...) ;
 int get_plci (TYPE_3__*) ;
 int nl_req_ncci (TYPE_2__*,scalar_t__,int ) ;
 int send_req (TYPE_2__*) ;
 int sendf (TYPE_4__*,int,int,int,char*,int) ;
 int sig_req (TYPE_2__*,scalar_t__,int ) ;

__attribute__((used)) static byte connect_req(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
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
  byte *p_chi = "";

  for(i=0;i<5;i++) ai_parms[i].length = 0;

  dbug(1,dprintf("connect_req(%d)",parms->length));
  Info = _WRONG_IDENTIFIER;
  if(a)
  {
    if(a->adapter_disabled)
    {
      dbug(1,dprintf("adapter disabled"));
      Id = ((word)1<<8)|a->Id;
      sendf(appl,_CONNECT_R|CONFIRM,Id,Number,"w",0);
      sendf(appl, _DISCONNECT_I, Id, 0, "w", _L1_ERROR);
      return 0;
    }
    Info = _OUT_OF_PLCI;
    if((i=get_plci(a)))
    {
      Info = 0;
      plci = &a->plci[i-1];
      plci->appl = appl;
      plci->call_dir = CALL_DIR_OUT | CALL_DIR_ORIGINATE;

      if(Id & EXT_CONTROLLER)
      {
        if(AdvCodecSupport(a, plci, appl, 0) )
        {
          plci->Id = 0;
          sendf(appl, _CONNECT_R|CONFIRM, Id, Number, "w", _WRONG_IDENTIFIER);
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
        if(!api_parse(&ai->info[1],(word)ai->length,"ssss",ai_parms))
        {
          ch = 0;
          if(ai_parms[0].length)
          {
            ch = GET_WORD(ai_parms[0].info+1);
            if(ch>4) ch=0;
            if(ch==4)
            {

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
                if(p_chi[0]>35)
                {
                  Info = _WRONG_MESSAGE_FORMAT;
                }
              }
              else Info = _WRONG_MESSAGE_FORMAT;
            }

            if(ch==3 && ai_parms[0].length>=7 && ai_parms[0].length<=36)
            {
              dir = GET_WORD(ai_parms[0].info+3);
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
                plci->b_channel = (byte)channel;
                add_p(plci,LLI,lli);
                add_p(plci,ESC,esc_chi);
                plci->State = LOCAL_CONNECT;
                if(!dir) plci->call_dir |= CALL_DIR_FORCE_OUTG_NL;
              }
            }
          }
        }
        else Info = _WRONG_MESSAGE_FORMAT;
      }

      dbug(1,dprintf("ch=%x,dir=%x,p_ch=%d",ch,dir,channel));
      plci->command = _CONNECT_R;
      plci->number = Number;

      if(ch==1 && LinkLayer!=3 && LinkLayer!=12) noCh = 1;
      if((ch==0 || ch==2 || noCh || ch==3 || ch==4) && !Info)
      {


        if(noCh) Info = add_b1(plci,&parms[5],2,0);
        else Info = add_b1(plci,&parms[5],ch,0);
        add_s(plci,OAD,&parms[2]);
        add_s(plci,OSA,&parms[4]);
        add_s(plci,BC,&parms[6]);
        add_s(plci,LLC,&parms[7]);
        add_s(plci,HLC,&parms[8]);
        CIP = GET_WORD(parms[0].info);
        if (a->Info_Mask[appl->Id-1] & 0x200)
        {

          add_p(plci,LLI,"\x01\x01");
        }
        if(GET_WORD(parms[0].info)<29) {
          add_p(plci,BC,cip_bc[GET_WORD(parms[0].info)][a->u_law]);
          add_p(plci,HLC,cip_hlc[GET_WORD(parms[0].info)]);
        }
        add_p(plci,UID,"\x06\x43\x61\x70\x69\x32\x30");
        sig_req(plci,ASSIGN,DSIG_ID);
      }
      else if(ch==1) {


        plci->Sig.Id = 0xff;
        Info = 0;
      }

      if(!Info && ch!=2 && !noCh ) {
        Info = add_b23(plci,&parms[5]);
        if(!Info) {
          if(!(plci->tel && !plci->adv_nl))nl_req_ncci(plci,ASSIGN,0);
        }
      }

      if(!Info)
      {
        if(ch==0 || ch==2 || ch==3 || noCh || ch==4)
        {
          if(plci->spoofed_msg==SPOOFING_REQUIRED)
          {
            api_save_msg(parms, "wsssssssss", &plci->saved_msg);
            plci->spoofed_msg = CALL_REQ;
            plci->internal_command = BLOCK_PLCI;
            plci->command = 0;
            dbug(1,dprintf("Spoof"));
            send_req(plci);
            return 0;
          }
          if(ch==4)add_p(plci,CHI,p_chi);
          add_s(plci,CPN,&parms[1]);
          add_s(plci,DSA,&parms[3]);
          if(noCh) add_p(plci,ESC,"\x02\x18\xfd");
          add_ai(plci,&parms[9]);
          if(!dir)sig_req(plci,CALL_REQ,0);
          else
          {
            plci->command = PERM_LIST_REQ;
            plci->appl = appl;
            sig_req(plci,LISTEN_REQ,0);
            send_req(plci);
            return 0;
          }
        }
        send_req(plci);
        return 0;
      }
      plci->Id = 0;
    }
  }
  sendf(appl,
        _CONNECT_R|CONFIRM,
        Id,
        Number,
        "w",Info);
  return 2;
}
