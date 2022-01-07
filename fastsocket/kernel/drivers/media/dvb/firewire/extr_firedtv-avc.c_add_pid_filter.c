
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct firedtv {int* channel_pid; int channel_active; } ;


 scalar_t__ test_bit (int,int *) ;

__attribute__((used)) static int add_pid_filter(struct firedtv *fdtv, u8 *operand)
{
 int i, n, pos = 1;

 for (i = 0, n = 0; i < 16; i++) {
  if (test_bit(i, &fdtv->channel_active)) {
   operand[pos++] = 0x13;
   operand[pos++] = 0x80;
   operand[pos++] = (fdtv->channel_pid[i] >> 8) & 0x1f;
   operand[pos++] = fdtv->channel_pid[i] & 0xff;
   operand[pos++] = 0x00;
   operand[pos++] = 0x00;
   n++;
  }
 }
 operand[0] = n;

 return pos;
}
