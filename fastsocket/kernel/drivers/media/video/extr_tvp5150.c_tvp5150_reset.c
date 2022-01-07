
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct tvp5150 {int norm; int hue; int contrast; int bright; } ;


 int TVP5150_BRIGHT_CTL ;
 int TVP5150_CONTRAST_CTL ;
 int TVP5150_HUE_CTL ;
 int TVP5150_SATURATION_CTL ;
 struct tvp5150* to_tvp5150 (struct v4l2_subdev*) ;
 int tvp5150_init_default ;
 int tvp5150_init_enable ;
 int tvp5150_selmux (struct v4l2_subdev*) ;
 int tvp5150_set_std (struct v4l2_subdev*,int ) ;
 int tvp5150_vdp_init (struct v4l2_subdev*,int ) ;
 int tvp5150_write (struct v4l2_subdev*,int ,int ) ;
 int tvp5150_write_inittab (struct v4l2_subdev*,int ) ;
 int vbi_ram_default ;

__attribute__((used)) static int tvp5150_reset(struct v4l2_subdev *sd, u32 val)
{
 struct tvp5150 *decoder = to_tvp5150(sd);


 tvp5150_write_inittab(sd, tvp5150_init_default);


 tvp5150_vdp_init(sd, vbi_ram_default);


 tvp5150_selmux(sd);


 tvp5150_write_inittab(sd, tvp5150_init_enable);


 tvp5150_write(sd, TVP5150_BRIGHT_CTL, decoder->bright);
 tvp5150_write(sd, TVP5150_CONTRAST_CTL, decoder->contrast);
 tvp5150_write(sd, TVP5150_SATURATION_CTL, decoder->contrast);
 tvp5150_write(sd, TVP5150_HUE_CTL, decoder->hue);

 tvp5150_set_std(sd, decoder->norm);
 return 0;
}
