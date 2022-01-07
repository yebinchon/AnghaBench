
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int work_struct; int work_thread; int quality; int jpeg_hdr; } ;
struct gspca_dev {int width; int height; } ;


 int D_ERR ;
 int D_STREAM ;
 int MODULE_NAME ;
 int PDEBUG (int ,char*) ;
 int create_singlethread_workqueue (int ) ;
 int jlj_start (struct gspca_dev*) ;
 int jpeg_define (int ,int ,int ,int) ;
 int jpeg_set_qual (int ,int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *dev = (struct sd *) gspca_dev;
 int ret;


 jpeg_define(dev->jpeg_hdr, gspca_dev->height, gspca_dev->width,
   0x21);
 jpeg_set_qual(dev->jpeg_hdr, dev->quality);
 PDEBUG(D_STREAM, "Start streaming at 320x240");
 ret = jlj_start(gspca_dev);
 if (ret < 0) {
  PDEBUG(D_ERR, "Start streaming command failed");
  return ret;
 }

 dev->work_thread = create_singlethread_workqueue(MODULE_NAME);
 queue_work(dev->work_thread, &dev->work_struct);

 return 0;
}
