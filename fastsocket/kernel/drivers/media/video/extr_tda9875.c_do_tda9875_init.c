
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct tda9875 {scalar_t__ treble; scalar_t__ bass; scalar_t__ rvol; scalar_t__ lvol; } ;


 int TDA9875_ABA ;
 int TDA9875_ACS ;
 int TDA9875_ADCIS ;
 int TDA9875_AER ;
 int TDA9875_ATR ;
 int TDA9875_AVL ;
 int TDA9875_AVR ;
 int TDA9875_C1LSB ;
 int TDA9875_C1MIB ;
 int TDA9875_C1MSB ;
 int TDA9875_C2LSB ;
 int TDA9875_C2MIB ;
 int TDA9875_C2MSB ;
 int TDA9875_CFG ;
 int TDA9875_CH1V ;
 int TDA9875_CH2V ;
 int TDA9875_DACOS ;
 int TDA9875_DCR ;
 int TDA9875_DEEM ;
 int TDA9875_FMAT ;
 int TDA9875_LOSR ;
 int TDA9875_MBA ;
 int TDA9875_MCS ;
 int TDA9875_MSR ;
 int TDA9875_MTR ;
 int TDA9875_MUT ;
 int TDA9875_MVL ;
 int TDA9875_MVR ;
 int TDA9875_SC1 ;
 int TDA9875_SC2 ;
 int debug ;
 int tda9875_set (struct v4l2_subdev*) ;
 int tda9875_write (struct v4l2_subdev*,int ,int) ;
 struct tda9875* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;

__attribute__((used)) static void do_tda9875_init(struct v4l2_subdev *sd)
{
 struct tda9875 *t = to_state(sd);

 v4l2_dbg(1, debug, sd, "In tda9875_init\n");
 tda9875_write(sd, TDA9875_CFG, 0xd0);
 tda9875_write(sd, TDA9875_MSR, 0x03);
 tda9875_write(sd, TDA9875_C1MSB, 0x00);
 tda9875_write(sd, TDA9875_C1MIB, 0x00);
 tda9875_write(sd, TDA9875_C1LSB, 0x00);
 tda9875_write(sd, TDA9875_C2MSB, 0x00);
 tda9875_write(sd, TDA9875_C2MIB, 0x00);
 tda9875_write(sd, TDA9875_C2LSB, 0x00);
 tda9875_write(sd, TDA9875_DCR, 0x00);
 tda9875_write(sd, TDA9875_DEEM, 0x44);
 tda9875_write(sd, TDA9875_FMAT, 0x00);
 tda9875_write(sd, TDA9875_SC1, 0x00);
 tda9875_write(sd, TDA9875_SC2, 0x01);

 tda9875_write(sd, TDA9875_CH1V, 0x10);
 tda9875_write(sd, TDA9875_CH2V, 0x10);
 tda9875_write(sd, TDA9875_DACOS, 0x02);
 tda9875_write(sd, TDA9875_ADCIS, 0x6f);
 tda9875_write(sd, TDA9875_LOSR, 0x00);
 tda9875_write(sd, TDA9875_AER, 0x00);
 tda9875_write(sd, TDA9875_MCS, 0x44);
 tda9875_write(sd, TDA9875_MVL, 0x03);
 tda9875_write(sd, TDA9875_MVR, 0x03);
 tda9875_write(sd, TDA9875_MBA, 0x00);
 tda9875_write(sd, TDA9875_MTR, 0x00);
 tda9875_write(sd, TDA9875_ACS, 0x44);
 tda9875_write(sd, TDA9875_AVL, 0x00);
 tda9875_write(sd, TDA9875_AVR, 0x00);
 tda9875_write(sd, TDA9875_ABA, 0x00);
 tda9875_write(sd, TDA9875_ATR, 0x00);

 tda9875_write(sd, TDA9875_MUT, 0xcc);

 t->lvol = t->rvol = 0;
 t->bass = 0;
 t->treble = 0;
 tda9875_set(sd);
}
