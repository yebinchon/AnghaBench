
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct saa7191 {int input; } ;


 int EINVAL ;
 int EIO ;


 int SAA7191_IOCK_CHRS ;
 int SAA7191_IOCK_GPSW1 ;
 int SAA7191_IOCK_GPSW2 ;
 int SAA7191_LUMA_BYPS ;
 int SAA7191_REG_IOCK ;
 int SAA7191_REG_LUMA ;
 int saa7191_read_reg (struct v4l2_subdev*,int ) ;
 int saa7191_write_reg (struct v4l2_subdev*,int ,int) ;
 struct saa7191* to_saa7191 (struct v4l2_subdev*) ;

__attribute__((used)) static int saa7191_s_routing(struct v4l2_subdev *sd,
        u32 input, u32 output, u32 config)
{
 struct saa7191 *decoder = to_saa7191(sd);
 u8 luma = saa7191_read_reg(sd, SAA7191_REG_LUMA);
 u8 iock = saa7191_read_reg(sd, SAA7191_REG_IOCK);
 int err;

 switch (input) {
 case 129:
  iock &= ~(SAA7191_IOCK_CHRS | SAA7191_IOCK_GPSW1
     | SAA7191_IOCK_GPSW2);

  luma &= ~SAA7191_LUMA_BYPS;
  break;
 case 128:
  iock |= SAA7191_IOCK_CHRS | SAA7191_IOCK_GPSW2;

  luma |= SAA7191_LUMA_BYPS;
  break;
 default:
  return -EINVAL;
 }

 err = saa7191_write_reg(sd, SAA7191_REG_LUMA, luma);
 if (err)
  return -EIO;
 err = saa7191_write_reg(sd, SAA7191_REG_IOCK, iock);
 if (err)
  return -EIO;

 decoder->input = input;

 return 0;
}
