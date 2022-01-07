
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


typedef int word ;
typedef int dword ;
typedef int byte ;
struct TYPE_34__ {int * info; scalar_t__ length; } ;
struct TYPE_33__ {int Id; } ;
struct TYPE_32__ {int* Info_Mask; scalar_t__ AdvCodecPLCI; } ;
struct TYPE_31__ {scalar_t__ State; scalar_t__ tel; scalar_t__ spoofed_msg; int B1_facilities; scalar_t__ command; int internal_command; int saved_msg; scalar_t__ adv_nl; TYPE_3__* appl; } ;
typedef TYPE_1__ PLCI ;
typedef TYPE_2__ DIVA_CAPI_ADAPTER ;
typedef TYPE_3__ APPL ;
typedef TYPE_4__ API_PARSE ;


 scalar_t__ ADV_VOICE ;
 int ASSIGN ;
 scalar_t__ AdvCodecSupport (TYPE_2__*,TYPE_1__*,TYPE_3__*,int ) ;
 int BLOCK_PLCI ;
 scalar_t__ CALL_RES ;
 int CONN_NR ;
 int ESC ;
 int EXT_CONTROLLER ;
 int GET_WORD (int *) ;
 scalar_t__ HANGUP ;
 void* INC_CON_ACCEPT ;
 scalar_t__ INC_CON_ALERT ;
 scalar_t__ INC_CON_CONNECTED_ALERT ;
 scalar_t__ INC_CON_PENDING ;
 int LLC ;
 int LLI ;
 scalar_t__ REJECT ;
 scalar_t__ SPOOFING_REQUIRED ;
 int _DISCONNECT_I ;
 int _OTHER_APPL_CONNECTED ;
 int add_ai (TYPE_1__*,TYPE_4__*) ;
 int add_b1 (TYPE_1__*,TYPE_4__*,int,int ) ;
 int add_b23 (TYPE_1__*,TYPE_4__*) ;
 int add_p (TYPE_1__*,int ,...) ;
 int add_s (TYPE_1__*,int ,TYPE_4__*) ;
 int api_parse (int *,int,char*,TYPE_4__*) ;
 int api_save_msg (TYPE_4__*,char*,int *) ;
 TYPE_3__* application ;
 scalar_t__ c_ind_mask_empty (TYPE_1__*) ;
 int clear_c_ind_mask_bit (TYPE_1__*,int) ;
 int dbug (int,int ) ;
 int dprintf (char*,...) ;
 int dump_c_ind_mask (TYPE_1__*) ;
 int max_appl ;
 int nl_req_ncci (TYPE_1__*,int ,int ) ;
 int sendf (TYPE_3__*,int ,int,int ,char*,int ) ;
 int sig_req (TYPE_1__*,scalar_t__,int ) ;
 scalar_t__ test_c_ind_mask_bit (TYPE_1__*,int) ;

__attribute__((used)) static byte connect_res(dword Id, word Number, DIVA_CAPI_ADAPTER *a,
   PLCI *plci, APPL *appl, API_PARSE *parms)
{
  word i, Info;
  word Reject;
  static byte cau_t[] = {0,0,0x90,0x91,0xac,0x9d,0x86,0xd8,0x9b};
  static byte esc_t[] = {0x03,0x08,0x00,0x00};
  API_PARSE * ai;
    API_PARSE ai_parms[5];
  word ch=0;

  if(!plci) {
    dbug(1,dprintf("connect_res(no plci)"));
    return 0;
  }

  dbug(1,dprintf("connect_res(State=0x%x)",plci->State));
  for(i=0;i<5;i++) ai_parms[i].length = 0;
  ai = &parms[5];
  dbug(1,dprintf("ai->length=%d",ai->length));

  if(ai->length)
  {
    if(!api_parse(&ai->info[1],(word)ai->length,"ssss",ai_parms))
    {
      dbug(1,dprintf("ai_parms[0].length=%d/0x%x",ai_parms[0].length,GET_WORD(ai_parms[0].info+1)));
      ch = 0;
      if(ai_parms[0].length)
      {
        ch = GET_WORD(ai_parms[0].info+1);
        dbug(1,dprintf("BCH-I=0x%x",ch));
      }
    }
  }

  if(plci->State==INC_CON_CONNECTED_ALERT)
  {
    dbug(1,dprintf("Connected Alert Call_Res"));
    if (a->Info_Mask[appl->Id-1] & 0x200)
    {

      add_p(plci,LLI,"\x01\x01");
    }
    add_s(plci, CONN_NR, &parms[2]);
    add_s(plci, LLC, &parms[4]);
    add_ai(plci, &parms[5]);
    plci->State = INC_CON_ACCEPT;
    sig_req(plci, CALL_RES,0);
    return 1;
  }
  else if(plci->State==INC_CON_PENDING || plci->State==INC_CON_ALERT) {
    clear_c_ind_mask_bit (plci, (word)(appl->Id-1));
    dump_c_ind_mask (plci);
    Reject = GET_WORD(parms[0].info);
    dbug(1,dprintf("Reject=0x%x",Reject));
    if(Reject)
    {
      if(c_ind_mask_empty (plci))
      {
        if((Reject&0xff00)==0x3400)
        {
          esc_t[2] = ((byte)(Reject&0x00ff)) | 0x80;
          add_p(plci,ESC,esc_t);
          add_ai(plci, &parms[5]);
          sig_req(plci,REJECT,0);
        }
        else if(Reject==1 || Reject>9)
        {
          add_ai(plci, &parms[5]);
          sig_req(plci,HANGUP,0);
        }
        else
        {
          esc_t[2] = cau_t[(Reject&0x000f)];
          add_p(plci,ESC,esc_t);
          add_ai(plci, &parms[5]);
          sig_req(plci,REJECT,0);
        }
        plci->appl = appl;
      }
      else
      {
        sendf(appl, _DISCONNECT_I, Id, 0, "w", _OTHER_APPL_CONNECTED);
      }
    }
    else {
      plci->appl = appl;
      if(Id & EXT_CONTROLLER){
        if(AdvCodecSupport(a, plci, appl, 0)){
          dbug(1,dprintf("connect_res(error from AdvCodecSupport)"));
          sig_req(plci,HANGUP,0);
          return 1;
        }
        if(plci->tel == ADV_VOICE && a->AdvCodecPLCI)
        {
          Info = add_b23(plci, &parms[1]);
          if (Info)
          {
            dbug(1,dprintf("connect_res(error from add_b23)"));
            sig_req(plci,HANGUP,0);
            return 1;
          }
          if(plci->adv_nl)
          {
            nl_req_ncci(plci, ASSIGN, 0);
          }
        }
      }
      else
      {
        plci->tel = 0;
        if(ch!=2)
        {
          Info = add_b23(plci, &parms[1]);
          if (Info)
          {
            dbug(1,dprintf("connect_res(error from add_b23 2)"));
            sig_req(plci,HANGUP,0);
            return 1;
          }
        }
        nl_req_ncci(plci, ASSIGN, 0);
      }

      if(plci->spoofed_msg==SPOOFING_REQUIRED)
      {
        api_save_msg(parms, "wsssss", &plci->saved_msg);
        plci->spoofed_msg = CALL_RES;
        plci->internal_command = BLOCK_PLCI;
        plci->command = 0;
        dbug(1,dprintf("Spoof"));
      }
      else
      {
        add_b1 (plci, &parms[1], ch, plci->B1_facilities);
        if (a->Info_Mask[appl->Id-1] & 0x200)
        {

          add_p(plci,LLI,"\x01\x01");
        }
        add_s(plci, CONN_NR, &parms[2]);
        add_s(plci, LLC, &parms[4]);
        add_ai(plci, &parms[5]);
        plci->State = INC_CON_ACCEPT;
        sig_req(plci, CALL_RES,0);
      }

      for(i=0; i<max_appl; i++) {
        if(test_c_ind_mask_bit (plci, i)) {
          sendf(&application[i], _DISCONNECT_I, Id, 0, "w", _OTHER_APPL_CONNECTED);
        }
      }
    }
  }
  return 1;
}
