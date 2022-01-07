
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx231xx {scalar_t__ tuner_type; int norm; } ;


 int DIF_AGC_IF_REF ;
 int FLD_DIF_IF_REF ;
 int FLD_DIF_K_AGC_IF ;
 int FLD_DIF_K_AGC_RF ;
 scalar_t__ TUNER_NXP_TDA18271 ;
 int V4L2_STD_SECAM_B ;
 int V4L2_STD_SECAM_D ;
 int V4L2_STD_SECAM_L ;
 int cx231xx_info (char*,scalar_t__) ;
 int vid_blk_read_word (struct cx231xx*,int ,int*) ;
 int vid_blk_write_word (struct cx231xx*,int ,int) ;

int cx231xx_tuner_post_channel_change(struct cx231xx *dev)
{
 int status = 0;
 u32 dwval;
 cx231xx_info("cx231xx_tuner_post_channel_change  dev->tuner_type =0%d\n",
       dev->tuner_type);


 status = vid_blk_read_word(dev, DIF_AGC_IF_REF, &dwval);
 dwval &= ~(FLD_DIF_K_AGC_RF | FLD_DIF_K_AGC_IF);

 if (dev->norm & (V4L2_STD_SECAM_L | V4L2_STD_SECAM_B |
    V4L2_STD_SECAM_D)) {
   if (dev->tuner_type == TUNER_NXP_TDA18271) {
    dwval &= ~FLD_DIF_IF_REF;
    dwval |= 0x88000300;
   } else
    dwval |= 0x88000000;
  } else {
   if (dev->tuner_type == TUNER_NXP_TDA18271) {
    dwval &= ~FLD_DIF_IF_REF;
    dwval |= 0xCC000300;
   } else
    dwval |= 0x44000000;
  }

 status = vid_blk_write_word(dev, DIF_AGC_IF_REF, dwval);

 return status;
}
