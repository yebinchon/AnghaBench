
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct saa7185 {int* reg; } ;


 int EINVAL ;
 int saa7185_write (struct v4l2_subdev*,int,int) ;
 struct saa7185* to_saa7185 (struct v4l2_subdev*) ;

__attribute__((used)) static int saa7185_s_routing(struct v4l2_subdev *sd,
        u32 input, u32 output, u32 config)
{
 struct saa7185 *encoder = to_saa7185(sd);




 switch (input) {
 case 0:

  saa7185_write(sd, 0x3a, 0x0f);

  saa7185_write(sd, 0x61, (encoder->reg[0x61] & 0xf7) | 0x08);
  saa7185_write(sd, 0x6e, 0x01);
  break;

 case 1:

  saa7185_write(sd, 0x3a, 0x0f);

  saa7185_write(sd, 0x61, (encoder->reg[0x61] & 0xf7) | 0x00);

  saa7185_write(sd, 0x6e, 0x00);
  break;

 case 2:

  saa7185_write(sd, 0x3a, 0x8f);

  saa7185_write(sd, 0x61, (encoder->reg[0x61] & 0xf7) | 0x08);

  saa7185_write(sd, 0x6e, 0x01);
  break;

 default:
  return -EINVAL;
 }
 return 0;
}
