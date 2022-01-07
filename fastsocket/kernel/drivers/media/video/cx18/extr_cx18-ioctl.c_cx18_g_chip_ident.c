
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int addr; } ;
struct v4l2_dbg_chip_ident {scalar_t__ revision; int ident; TYPE_1__ match; } ;
struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int dummy; } ;


 int CX18_HW_418_AV ;
 int EINVAL ;



 int V4L2_IDENT_CX23418 ;
 int V4L2_IDENT_NONE ;
 int core ;
 int cx18_call_all (struct cx18*,int ,int ,struct v4l2_dbg_chip_ident*) ;
 int cx18_call_hw (struct cx18*,int ,int ,int ,struct v4l2_dbg_chip_ident*) ;
 scalar_t__ cx18_read_reg (struct cx18*,int) ;
 int g_chip_ident ;

__attribute__((used)) static int cx18_g_chip_ident(struct file *file, void *fh,
    struct v4l2_dbg_chip_ident *chip)
{
 struct cx18 *cx = ((struct cx18_open_id *)fh)->cx;
 int err = 0;

 chip->ident = V4L2_IDENT_NONE;
 chip->revision = 0;
 switch (chip->match.type) {
 case 130:
  switch (chip->match.addr) {
  case 0:
   chip->ident = V4L2_IDENT_CX23418;
   chip->revision = cx18_read_reg(cx, 0xC72028);
   break;
  case 1:





   cx18_call_hw(cx, CX18_HW_418_AV,
         core, g_chip_ident, chip);
   break;
  default:




   err = -EINVAL;
   break;
  }
  break;
 case 128:

  cx18_call_all(cx, core, g_chip_ident, chip);
  break;
 case 129:





  cx18_call_all(cx, core, g_chip_ident, chip);
  break;
 default:
  err = -EINVAL;
  break;
 }
 return err;
}
