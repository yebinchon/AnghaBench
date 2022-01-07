
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct v4l2_dbg_chip_ident {TYPE_1__ match; int ident; scalar_t__ revision; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {scalar_t__ has_cx23415; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_CHIP_MATCH_HOST ;
 scalar_t__ V4L2_CHIP_MATCH_I2C_ADDR ;
 scalar_t__ V4L2_CHIP_MATCH_I2C_DRIVER ;
 int V4L2_IDENT_CX23415 ;
 int V4L2_IDENT_CX23416 ;
 int V4L2_IDENT_NONE ;
 int core ;
 int g_chip_ident ;
 int ivtv_call_all_err (struct ivtv*,int ,int ,struct v4l2_dbg_chip_ident*) ;
 scalar_t__ v4l2_chip_match_host (TYPE_1__*) ;

__attribute__((used)) static int ivtv_g_chip_ident(struct file *file, void *fh, struct v4l2_dbg_chip_ident *chip)
{
 struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;

 chip->ident = V4L2_IDENT_NONE;
 chip->revision = 0;
 if (chip->match.type == V4L2_CHIP_MATCH_HOST) {
  if (v4l2_chip_match_host(&chip->match))
   chip->ident = itv->has_cx23415 ? V4L2_IDENT_CX23415 : V4L2_IDENT_CX23416;
  return 0;
 }
 if (chip->match.type != V4L2_CHIP_MATCH_I2C_DRIVER &&
     chip->match.type != V4L2_CHIP_MATCH_I2C_ADDR)
  return -EINVAL;

 return ivtv_call_all_err(itv, core, g_chip_ident, chip);
}
