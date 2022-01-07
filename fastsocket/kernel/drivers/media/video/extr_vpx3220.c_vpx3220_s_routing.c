
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int debug ;
 int * inputs ;
 int udelay (int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ) ;
 int vpx3220_fp_read (struct v4l2_subdev*,int) ;
 int vpx3220_fp_write (struct v4l2_subdev*,int,int) ;
 int vpx3220_write (struct v4l2_subdev*,int,int const) ;

__attribute__((used)) static int vpx3220_s_routing(struct v4l2_subdev *sd,
        u32 input, u32 output, u32 config)
{
 int data;





 const int input_vals[3][2] = {
  {0x0c, 0},
  {0x0d, 0},
  {0x0e, 1}
 };

 if (input < 0 || input > 2)
  return -EINVAL;

 v4l2_dbg(1, debug, sd, "input switched to %s\n", inputs[input]);

 vpx3220_write(sd, 0x33, input_vals[input][0]);

 data = vpx3220_fp_read(sd, 0xf2) & ~(0x0020);
 if (data < 0)
  return data;

 vpx3220_fp_write(sd, 0xf2,
   data | (input_vals[input][1] << 5) | 0x0010);

 udelay(10);
 return 0;
}
