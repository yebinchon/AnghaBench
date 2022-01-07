
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct firedtv {int subunit; int avc_mutex; int avc_data_length; scalar_t__ avc_data; } ;
struct avc_command_frame {int subunit; int* operand; int opcode; int ctype; } ;


 int ALIGN (int,int) ;
 int AVC_CTYPE_CONTROL ;
 int AVC_OPCODE_DSD ;
 int AVC_SUBUNIT_TYPE_TUNER ;
 int EINVAL ;
 int avc_write (struct firedtv*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pad_operands (struct avc_command_frame*,int) ;

int avc_tuner_set_pids(struct firedtv *fdtv, unsigned char pidc, u16 pid[])
{
 struct avc_command_frame *c = (void *)fdtv->avc_data;
 int ret, pos, k;

 if (pidc > 16 && pidc != 0xff)
  return -EINVAL;

 mutex_lock(&fdtv->avc_mutex);

 c->ctype = AVC_CTYPE_CONTROL;
 c->subunit = AVC_SUBUNIT_TYPE_TUNER | fdtv->subunit;
 c->opcode = AVC_OPCODE_DSD;

 c->operand[0] = 0;
 c->operand[1] = 0xd2;
 c->operand[2] = 0x20;
 c->operand[3] = 0x00;
 c->operand[4] = 0x00;
 c->operand[5] = pidc;

 pos = 6;
 if (pidc != 0xff)
  for (k = 0; k < pidc; k++) {
   c->operand[pos++] = 0x13;
   c->operand[pos++] = 0x80;
   c->operand[pos++] = (pid[k] >> 8) & 0x1f;
   c->operand[pos++] = pid[k] & 0xff;
   c->operand[pos++] = 0x00;
   c->operand[pos++] = 0x00;
  }
 pad_operands(c, pos);

 fdtv->avc_data_length = ALIGN(3 + pos, 4);
 ret = avc_write(fdtv);



 mutex_unlock(&fdtv->avc_mutex);

 if (ret == 0)
  msleep(50);

 return ret;
}
