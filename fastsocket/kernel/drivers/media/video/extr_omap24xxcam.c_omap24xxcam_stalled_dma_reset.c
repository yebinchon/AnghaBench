
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap24xxcam_device {int dev; int in_reset; } ;


 int atomic_read (int *) ;
 int dev_dbg (int ,char*) ;
 int omap24xxcam_reset (struct omap24xxcam_device*) ;

__attribute__((used)) static void omap24xxcam_stalled_dma_reset(unsigned long data)
{
 struct omap24xxcam_device *cam = (struct omap24xxcam_device *)data;

 if (!atomic_read(&cam->in_reset)) {
  dev_dbg(cam->dev, "dma stalled, resetting camera\n");
  omap24xxcam_reset(cam);
 }
}
