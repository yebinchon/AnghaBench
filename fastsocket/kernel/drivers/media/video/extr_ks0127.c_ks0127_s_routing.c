
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct ks0127 {int norm; } ;


 size_t KS_BRT ;
 size_t KS_CHROMB ;
 size_t KS_CMDA ;
 size_t KS_CMDB ;
 size_t KS_CMDC ;
 size_t KS_CMDD ;
 size_t KS_CON ;
 size_t KS_CTRACK ;
 size_t KS_DEMOD ;
 size_t KS_HUE ;
 size_t KS_LUMA ;
 size_t KS_SAT ;
 size_t KS_UGAIN ;
 size_t KS_UVOFFH ;
 size_t KS_UVOFFL ;
 size_t KS_VERTIA ;
 size_t KS_VERTIC ;
 size_t KS_VGAIN ;
 int V4L2_STD_525_60 ;
 int debug ;
 int ks0127_and_or (struct v4l2_subdev*,size_t,int,int) ;
 int ks0127_write (struct v4l2_subdev*,size_t,int) ;
 int* reg_defaults ;
 struct ks0127* to_ks0127 (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,...) ;

__attribute__((used)) static int ks0127_s_routing(struct v4l2_subdev *sd,
       u32 input, u32 output, u32 config)
{
 struct ks0127 *ks = to_ks0127(sd);

 switch (input) {
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
  v4l2_dbg(1, debug, sd,
   "s_routing %d: Composite\n", input);

  ks0127_and_or(sd, KS_CMDA, 0xfc, 0x00);

  ks0127_and_or(sd, KS_CMDA, ~0x40, 0x00);

  ks0127_and_or(sd, KS_CMDB, 0xb0, input);

  ks0127_and_or(sd, KS_CMDC, 0x70, 0x0a);

  ks0127_and_or(sd, KS_CMDD, 0x03, 0x00);

  ks0127_and_or(sd, KS_CTRACK, 0xcf, 0x00);

  ks0127_and_or(sd, KS_LUMA, 0x00,
          (reg_defaults[KS_LUMA])|0x0c);

  ks0127_and_or(sd, KS_VERTIA, 0x08, 0x81);

  ks0127_and_or(sd, KS_VERTIC, 0x0f, 0x90);


  ks0127_and_or(sd, KS_CHROMB, 0x0f, 0x90);

  ks0127_write(sd, KS_UGAIN, reg_defaults[KS_UGAIN]);
  ks0127_write(sd, KS_VGAIN, reg_defaults[KS_VGAIN]);
  ks0127_write(sd, KS_UVOFFH, reg_defaults[KS_UVOFFH]);
  ks0127_write(sd, KS_UVOFFL, reg_defaults[KS_UVOFFL]);
  break;

 case 131:
 case 130:
 case 129:
  v4l2_dbg(1, debug, sd,
   "s_routing %d: S-Video\n", input);

  ks0127_and_or(sd, KS_CMDA, 0xfc, 0x00);

  ks0127_and_or(sd, KS_CMDA, ~0x40, 0x00);

  ks0127_and_or(sd, KS_CMDB, 0xb0, input);

  ks0127_and_or(sd, KS_CMDC, 0x70, 0x0a);

  ks0127_and_or(sd, KS_CMDD, 0x03, 0x00);

  ks0127_and_or(sd, KS_CTRACK, 0xcf, 0x00);
  ks0127_and_or(sd, KS_LUMA, 0x00,
          reg_defaults[KS_LUMA]);

  ks0127_and_or(sd, KS_VERTIA, 0x08,
          (reg_defaults[KS_VERTIA]&0xf0)|0x01);
  ks0127_and_or(sd, KS_VERTIC, 0x0f,
          reg_defaults[KS_VERTIC]&0xf0);

  ks0127_and_or(sd, KS_CHROMB, 0x0f,
          reg_defaults[KS_CHROMB]&0xf0);

  ks0127_write(sd, KS_UGAIN, reg_defaults[KS_UGAIN]);
  ks0127_write(sd, KS_VGAIN, reg_defaults[KS_VGAIN]);
  ks0127_write(sd, KS_UVOFFH, reg_defaults[KS_UVOFFH]);
  ks0127_write(sd, KS_UVOFFL, reg_defaults[KS_UVOFFL]);
  break;

 case 128:
  v4l2_dbg(1, debug, sd, "s_routing 15: YUV656\n");
  if (ks->norm & V4L2_STD_525_60)

   ks0127_and_or(sd, KS_CMDA, 0xfc, 0x03);
  else

   ks0127_and_or(sd, KS_CMDA, 0xfc, 0x02);

  ks0127_and_or(sd, KS_CMDA, 0xff, 0x40);

  ks0127_and_or(sd, KS_CMDB, 0xb0, (input | 0x40));


  ks0127_and_or(sd, KS_CMDC, 0x70, 0x87);

  ks0127_and_or(sd, KS_CMDD, 0x03, 0x08);

  ks0127_and_or(sd, KS_CTRACK, 0xcf, 0x30);

  ks0127_and_or(sd, KS_LUMA, 0x00, 0x71);
  ks0127_and_or(sd, KS_VERTIC, 0x0f,
          reg_defaults[KS_VERTIC]&0xf0);


  ks0127_and_or(sd, KS_VERTIA, 0x08, 0x81);

  ks0127_and_or(sd, KS_CHROMB, 0x0f,
          reg_defaults[KS_CHROMB]&0xf0);

  ks0127_and_or(sd, KS_CON, 0x00, 0x00);
  ks0127_and_or(sd, KS_BRT, 0x00, 32);

  ks0127_and_or(sd, KS_SAT, 0x00, 0xe8);
  ks0127_and_or(sd, KS_HUE, 0x00, 0);

  ks0127_and_or(sd, KS_UGAIN, 0x00, 238);
  ks0127_and_or(sd, KS_VGAIN, 0x00, 0x00);


  ks0127_and_or(sd, KS_UVOFFH, 0x00, 0x4f);
  ks0127_and_or(sd, KS_UVOFFL, 0x00, 0x00);
  break;

 default:
  v4l2_dbg(1, debug, sd,
   "s_routing: Unknown input %d\n", input);
  break;
 }



 ks0127_write(sd, KS_DEMOD, reg_defaults[KS_DEMOD]);
 return 0;
}
