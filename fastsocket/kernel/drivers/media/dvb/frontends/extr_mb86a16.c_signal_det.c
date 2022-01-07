
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mb86a16_state {int dummy; } ;


 scalar_t__ CNTM_set (struct mb86a16_state*,int,int,int) ;
 int EREMOTEIO ;
 int MB86A16_ERROR ;
 int dprintk (int ,int ,int,char*) ;
 int mb86a16_read (struct mb86a16_state*,int,unsigned char*) ;
 int msleep_interruptible (int) ;
 int smrt_info_get (struct mb86a16_state*,int) ;
 int smrt_set (struct mb86a16_state*,int) ;
 int srst (struct mb86a16_state*) ;
 int verbose ;

__attribute__((used)) static int signal_det(struct mb86a16_state *state,
        int smrt,
        unsigned char *SIG)
{

 int ret ;
 int smrtd ;
 int wait_sym ;

 u32 wait_t;
 unsigned char S[3] ;
 int i ;

 if (*SIG > 45) {
  if (CNTM_set(state, 2, 1, 2) < 0) {
   dprintk(verbose, MB86A16_ERROR, 1, "CNTM set Error");
   return -1;
  }
  wait_sym = 40000;
 } else {
  if (CNTM_set(state, 3, 1, 2) < 0) {
   dprintk(verbose, MB86A16_ERROR, 1, "CNTM set Error");
   return -1;
  }
  wait_sym = 80000;
 }
 for (i = 0; i < 3; i++) {
  if (i == 0)
   smrtd = smrt * 98 / 100;
  else if (i == 1)
   smrtd = smrt;
  else
   smrtd = smrt * 102 / 100;
  smrt_info_get(state, smrtd);
  smrt_set(state, smrtd);
  srst(state);
  wait_t = (wait_sym + 99 * smrtd / 100) / smrtd;
  if (wait_t == 0)
   wait_t = 1;
  msleep_interruptible(10);
  if (mb86a16_read(state, 0x37, &(S[i])) != 2) {
   dprintk(verbose, MB86A16_ERROR, 1, "I2C transfer error");
   return -EREMOTEIO;
  }
 }
 if ((S[1] > S[0] * 112 / 100) &&
     (S[1] > S[2] * 112 / 100)) {

  ret = 1;
 } else {
  ret = 0;
 }
 *SIG = S[1];

 if (CNTM_set(state, 0, 1, 2) < 0) {
  dprintk(verbose, MB86A16_ERROR, 1, "CNTM set Error");
  return -1;
 }

 return ret;
}
