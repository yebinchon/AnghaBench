
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au8522_state {int dummy; } ;


 int AU8522_TVDEC_VBI_CTRL_H_REG017H ;
 int AU8522_TVDEC_VBI_CTRL_H_REG017H_CCON ;
 int AU8522_TVDEC_VBI_CTRL_L_REG018H ;
 int AU8522_TVDEC_VBI_USER_FRAME_MASK0_REG023H ;
 int AU8522_TVDEC_VBI_USER_FRAME_MASK1_REG022H ;
 int AU8522_TVDEC_VBI_USER_FRAME_MASK2_REG021H ;
 int AU8522_TVDEC_VBI_USER_FRAME_PAT0_REG020H ;
 int AU8522_TVDEC_VBI_USER_FRAME_PAT1_REG01FH ;
 int AU8522_TVDEC_VBI_USER_FRAME_PAT2_REG01EH ;
 int AU8522_TVDEC_VBI_USER_THRESH1_REG01CH ;
 int AU8522_TVDEC_VBI_USER_TOTAL_BITS_REG019H ;
 int AU8522_TVDEC_VBI_USER_TUNIT_H_REG01AH ;
 int AU8522_TVDEC_VBI_USER_TUNIT_L_REG01BH ;
 int au8522_writereg (struct au8522_state*,int,int) ;

__attribute__((used)) static void setup_vbi(struct au8522_state *state, int aud_input)
{
 int i;


 au8522_writereg(state, AU8522_TVDEC_VBI_CTRL_H_REG017H, 0x00);
 au8522_writereg(state, AU8522_TVDEC_VBI_CTRL_L_REG018H, 0x00);
 au8522_writereg(state, AU8522_TVDEC_VBI_USER_TOTAL_BITS_REG019H, 0x00);
 au8522_writereg(state, AU8522_TVDEC_VBI_USER_TUNIT_H_REG01AH, 0x00);
 au8522_writereg(state, AU8522_TVDEC_VBI_USER_TUNIT_L_REG01BH, 0x00);
 au8522_writereg(state, AU8522_TVDEC_VBI_USER_THRESH1_REG01CH, 0x00);
 au8522_writereg(state, AU8522_TVDEC_VBI_USER_FRAME_PAT2_REG01EH, 0x00);
 au8522_writereg(state, AU8522_TVDEC_VBI_USER_FRAME_PAT1_REG01FH, 0x00);
 au8522_writereg(state, AU8522_TVDEC_VBI_USER_FRAME_PAT0_REG020H, 0x00);
 au8522_writereg(state, AU8522_TVDEC_VBI_USER_FRAME_MASK2_REG021H,
   0x00);
 au8522_writereg(state, AU8522_TVDEC_VBI_USER_FRAME_MASK1_REG022H,
   0x00);
 au8522_writereg(state, AU8522_TVDEC_VBI_USER_FRAME_MASK0_REG023H,
   0x00);


 for (i = 0x30; i < 0x60; i++)
  au8522_writereg(state, i, 0x40);



 au8522_writereg(state, 0x44, 0x60);



 au8522_writereg(state, AU8522_TVDEC_VBI_CTRL_H_REG017H,
   AU8522_TVDEC_VBI_CTRL_H_REG017H_CCON);

}
