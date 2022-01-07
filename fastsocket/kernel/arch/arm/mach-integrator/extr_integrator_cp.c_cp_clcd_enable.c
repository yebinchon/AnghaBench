
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int bits_per_pixel; } ;
struct TYPE_4__ {TYPE_1__ var; } ;
struct clcd_fb {TYPE_2__ fb; } ;


 int CM_CTRL_LCDEN0 ;
 int CM_CTRL_LCDEN1 ;
 int CM_CTRL_LCDMUXSEL_MASK ;
 int CM_CTRL_LCDMUXSEL_VGA_16BPP ;
 int CM_CTRL_LCDMUXSEL_VGA_8421BPP ;
 int CM_CTRL_STATIC ;
 int CM_CTRL_STATIC1 ;
 int CM_CTRL_STATIC2 ;
 int CM_CTRL_n24BITEN ;
 int cm_control (int,int) ;

__attribute__((used)) static void cp_clcd_enable(struct clcd_fb *fb)
{
 u32 val;

 if (fb->fb.var.bits_per_pixel <= 8)
  val = CM_CTRL_LCDMUXSEL_VGA_8421BPP;
 else if (fb->fb.var.bits_per_pixel <= 16)
  val = CM_CTRL_LCDMUXSEL_VGA_16BPP
   | CM_CTRL_LCDEN0 | CM_CTRL_LCDEN1
   | CM_CTRL_STATIC1 | CM_CTRL_STATIC2;
 else
  val = 0;

 cm_control(CM_CTRL_LCDMUXSEL_MASK|
     CM_CTRL_LCDEN0|
     CM_CTRL_LCDEN1|
     CM_CTRL_STATIC1|
     CM_CTRL_STATIC2|
     CM_CTRL_STATIC|
     CM_CTRL_n24BITEN, val);
}
