
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv {int dummy; } ;


 int EREMOTEIO ;
 int IVTV_DEBUG_HI_I2C (char*,unsigned char) ;
 int IVTV_DEBUG_I2C (char*) ;
 unsigned char ivtv_getsda (struct ivtv*) ;
 int ivtv_scldelay (struct ivtv*) ;
 int ivtv_setscl (struct ivtv*,int) ;
 int ivtv_setsda (struct ivtv*,int) ;
 int ivtv_waitscl (struct ivtv*,int) ;

__attribute__((used)) static int ivtv_readbyte(struct ivtv *itv, unsigned char *byte, int nack)
{
 int i;

 *byte = 0;

 ivtv_setsda(itv, 1);
 ivtv_scldelay(itv);
 for (i = 0; i < 8; ++i) {
  ivtv_setscl(itv, 0);
  ivtv_scldelay(itv);
  ivtv_setscl(itv, 1);
  if (!ivtv_waitscl(itv, 1)) {
   IVTV_DEBUG_I2C("Error setting SCL high\n");
   return -EREMOTEIO;
  }
  *byte = ((*byte)<<1)|ivtv_getsda(itv);
 }
 ivtv_setscl(itv, 0);
 ivtv_scldelay(itv);
 ivtv_setsda(itv, nack);
 ivtv_scldelay(itv);
 ivtv_setscl(itv, 1);
 ivtv_scldelay(itv);
 ivtv_setscl(itv, 0);
 ivtv_scldelay(itv);
 IVTV_DEBUG_HI_I2C("read %x\n",*byte);
 return 0;
}
