
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap24xxcam_device {void* ick; int dev; void* fck; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 void* clk_get (int ,char*) ;
 int dev_err (int ,char*) ;
 int omap24xxcam_clock_put (struct omap24xxcam_device*) ;

__attribute__((used)) static int omap24xxcam_clock_get(struct omap24xxcam_device *cam)
{
 int rval = 0;

 cam->fck = clk_get(cam->dev, "fck");
 if (IS_ERR(cam->fck)) {
  dev_err(cam->dev, "can't get camera fck");
  rval = PTR_ERR(cam->fck);
  omap24xxcam_clock_put(cam);
  return rval;
 }

 cam->ick = clk_get(cam->dev, "ick");
 if (IS_ERR(cam->ick)) {
  dev_err(cam->dev, "can't get camera ick");
  rval = PTR_ERR(cam->ick);
  omap24xxcam_clock_put(cam);
 }

 return rval;
}
