
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int work_struct; int work_thread; int gspca_dev; } ;
struct gspca_dev {int curr_mode; } ;


 int D_ERR ;
 int D_STREAM ;
 int MODULE_NAME ;
 int PDEBUG (int ,char*) ;
 int SQ905_CAPTURE_HIGH ;
 int SQ905_CAPTURE_LOW ;
 int SQ905_CAPTURE_MED ;
 int create_singlethread_workqueue (int ) ;
 int queue_work (int ,int *) ;
 int sq905_command (int *,int ) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *dev = (struct sd *) gspca_dev;
 int ret;


 switch (gspca_dev->curr_mode) {
 default:

  PDEBUG(D_STREAM, "Start streaming at high resolution");
  ret = sq905_command(&dev->gspca_dev, SQ905_CAPTURE_HIGH);
  break;
 case 1:
  PDEBUG(D_STREAM, "Start streaming at medium resolution");
  ret = sq905_command(&dev->gspca_dev, SQ905_CAPTURE_MED);
  break;
 case 0:
  PDEBUG(D_STREAM, "Start streaming at low resolution");
  ret = sq905_command(&dev->gspca_dev, SQ905_CAPTURE_LOW);
 }

 if (ret < 0) {
  PDEBUG(D_ERR, "Start streaming command failed");
  return ret;
 }

 dev->work_thread = create_singlethread_workqueue(MODULE_NAME);
 queue_work(dev->work_thread, &dev->work_struct);

 return 0;
}
