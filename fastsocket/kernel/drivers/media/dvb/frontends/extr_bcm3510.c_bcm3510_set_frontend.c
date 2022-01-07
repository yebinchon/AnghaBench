
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int modulation; } ;
struct TYPE_6__ {TYPE_1__ vsb; } ;
struct dvb_frontend_parameters {int frequency; TYPE_2__ u; } ;
struct dvb_frontend {struct bcm3510_state* demodulator_priv; } ;
struct TYPE_8__ {int MODE; int NTSCSWEEP; int FA; scalar_t__ BW; scalar_t__ OFFSET; } ;
struct TYPE_7__ {int SYM_RATE; int IF_FREQ; } ;
struct bcm3510_hab_cmd_ext_acquire {TYPE_4__ ACQUIRE0; TYPE_3__ ACQUIRE1; } ;
struct bcm3510_state {int status_check_interval; struct bcm3510_hab_cmd_ext_acquire status2; struct bcm3510_hab_cmd_ext_acquire status1; } ;
struct bcm3510_hab_cmd_bert_control {scalar_t__ unused; scalar_t__ BE; } ;
typedef int cmd ;
typedef int bert ;


 int CMD_ACQUIRE ;
 int CMD_STATE_CONTROL ;
 int EINVAL ;
 int MSGID_BERT_CONTROL ;
 int MSGID_BERT_SET ;
 int MSGID_EXT_TUNER_ACQUIRE ;




 int bcm3510_bert_reset (struct bcm3510_state*) ;
 int bcm3510_do_hab_cmd (struct bcm3510_state*,int ,int ,int *,int,int *,int ) ;
 int bcm3510_set_freq (struct bcm3510_state*,int ) ;
 int memset (struct bcm3510_hab_cmd_ext_acquire*,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static int bcm3510_set_frontend(struct dvb_frontend* fe,
          struct dvb_frontend_parameters *p)
{
 struct bcm3510_state* st = fe->demodulator_priv;
 struct bcm3510_hab_cmd_ext_acquire cmd;
 struct bcm3510_hab_cmd_bert_control bert;
 int ret;

 memset(&cmd,0,sizeof(cmd));
 switch (p->u.vsb.modulation) {
  case 131:
   cmd.ACQUIRE0.MODE = 0x1;
   cmd.ACQUIRE1.SYM_RATE = 0x1;
   cmd.ACQUIRE1.IF_FREQ = 0x1;
   break;
  case 130:
   cmd.ACQUIRE0.MODE = 0x2;
   cmd.ACQUIRE1.SYM_RATE = 0x2;
   cmd.ACQUIRE1.IF_FREQ = 0x1;
   break;
  case 128:
   cmd.ACQUIRE0.MODE = 0x8;
   cmd.ACQUIRE1.SYM_RATE = 0x0;
   cmd.ACQUIRE1.IF_FREQ = 0x0;
   break;
  case 129:
   cmd.ACQUIRE0.MODE = 0x9;
   cmd.ACQUIRE1.SYM_RATE = 0x0;
   cmd.ACQUIRE1.IF_FREQ = 0x0;
  default:
   return -EINVAL;
 };
 cmd.ACQUIRE0.OFFSET = 0;
 cmd.ACQUIRE0.NTSCSWEEP = 1;
 cmd.ACQUIRE0.FA = 1;
 cmd.ACQUIRE0.BW = 0;
 bcm3510_do_hab_cmd(st, CMD_ACQUIRE, MSGID_EXT_TUNER_ACQUIRE, (u8 *) &cmd, sizeof(cmd), ((void*)0), 0);


 bert.BE = 0;
 bert.unused = 0;
 bcm3510_do_hab_cmd(st, CMD_STATE_CONTROL, MSGID_BERT_CONTROL, (u8 *) &bert, sizeof(bert), ((void*)0), 0);
 bcm3510_do_hab_cmd(st, CMD_STATE_CONTROL, MSGID_BERT_SET, (u8 *) &bert, sizeof(bert), ((void*)0), 0);

 bcm3510_bert_reset(st);

 if ((ret = bcm3510_set_freq(st,p->frequency)) < 0)
  return ret;

 memset(&st->status1,0,sizeof(st->status1));
 memset(&st->status2,0,sizeof(st->status2));
 st->status_check_interval = 500;


 msleep(200);

 return 0;
}
