
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_sliced_vbi_cap {int service_set; int ** service_lines; } ;
struct TYPE_2__ {int ini_line; int end_line; int vbi_type; } ;
struct i2c_vbi_ram_value {scalar_t__ reg; TYPE_1__ type; } ;


 int debug ;
 int memset (struct v4l2_sliced_vbi_cap*,int ,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;
 struct i2c_vbi_ram_value* vbi_ram_default ;

__attribute__((used)) static int tvp5150_g_sliced_vbi_cap(struct v4l2_subdev *sd,
    struct v4l2_sliced_vbi_cap *cap)
{
 const struct i2c_vbi_ram_value *regs = vbi_ram_default;
 int line;

 v4l2_dbg(1, debug, sd, "g_sliced_vbi_cap\n");
 memset(cap, 0, sizeof *cap);

 while (regs->reg != (u16)-1 ) {
  for (line=regs->type.ini_line;line<=regs->type.end_line;line++) {
   cap->service_lines[0][line] |= regs->type.vbi_type;
  }
  cap->service_set |= regs->type.vbi_type;

  regs++;
 }
 return 0;
}
