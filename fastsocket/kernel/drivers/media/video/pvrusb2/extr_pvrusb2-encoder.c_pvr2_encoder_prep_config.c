
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pvr2_hdw {TYPE_1__* hdw_desc; int ctl_lock; } ;
struct TYPE_2__ {scalar_t__ flag_has_cx25840; } ;


 int CX2341X_ENC_MISC ;
 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int pvr2_encoder_vcmd (struct pvr2_hdw*,int ,int,int,int,...) ;
 int pvr2_encoder_write_words (struct pvr2_hdw*,int,int*,int) ;

__attribute__((used)) static int pvr2_encoder_prep_config(struct pvr2_hdw *hdw)
{
 int ret = 0;
 int encMisc3Arg = 0;
 if (hdw->hdw_desc->flag_has_cx25840) {
  encMisc3Arg = 1;
 } else {
  encMisc3Arg = 0;
 }
 ret |= pvr2_encoder_vcmd(hdw, CX2341X_ENC_MISC,4, 3,
     encMisc3Arg,0,0);

 ret |= pvr2_encoder_vcmd(hdw, CX2341X_ENC_MISC,4, 8,0,0,0);
 ret |= pvr2_encoder_vcmd(hdw, CX2341X_ENC_MISC,4, 0,3,0,0);
 ret |= pvr2_encoder_vcmd(hdw, CX2341X_ENC_MISC,4,15,0,0,0);



 ret |= pvr2_encoder_vcmd(hdw, CX2341X_ENC_MISC, 2, 4, 1);

 return ret;
}
