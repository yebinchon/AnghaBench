
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; scalar_t__ msb_right; } ;
struct fb_var_screeninfo {TYPE_1__ green; } ;
struct clcd_fb {int dummy; } ;


 int clcdfb_check (struct clcd_fb*,struct fb_var_screeninfo*) ;

__attribute__((used)) static inline int nxeb500hmi_check(struct clcd_fb *fb, struct fb_var_screeninfo *var)
{
 var->green.length = 5;
 var->green.msb_right = 0;

 return clcdfb_check(fb, var);
}
