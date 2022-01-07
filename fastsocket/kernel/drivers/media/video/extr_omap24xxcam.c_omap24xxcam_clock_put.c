
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap24xxcam_device {int * fck; int * ick; } ;


 int IS_ERR (int *) ;
 int clk_put (int *) ;

__attribute__((used)) static void omap24xxcam_clock_put(struct omap24xxcam_device *cam)
{
 if (cam->ick != ((void*)0) && !IS_ERR(cam->ick))
  clk_put(cam->ick);
 if (cam->fck != ((void*)0) && !IS_ERR(cam->fck))
  clk_put(cam->fck);

 cam->ick = cam->fck = ((void*)0);
}
