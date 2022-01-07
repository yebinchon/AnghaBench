
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap24xxcam_device {int ick; int fck; } ;


 int clk_disable (int ) ;

__attribute__((used)) static void omap24xxcam_clock_off(struct omap24xxcam_device *cam)
{
 clk_disable(cam->fck);
 clk_disable(cam->ick);
}
