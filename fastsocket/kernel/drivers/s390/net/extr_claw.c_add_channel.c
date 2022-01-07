
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irb {int dummy; } ;
struct claw_privbk {struct chbk* channel; } ;
struct chbk {int flag; int * irb; int devno; int id; struct ccw_device* cdev; } ;
struct ccw_device {int dev; } ;
struct ccw_dev_id {int devno; } ;


 int CLAW_DBF_TEXT_ (int,int ,char*,char*) ;
 int CLAW_ID_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ccw_device_get_id (struct ccw_device*,struct ccw_dev_id*) ;
 char* dev_name (int *) ;
 int * kzalloc (int,int ) ;
 int setup ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int
add_channel(struct ccw_device *cdev,int i,struct claw_privbk *privptr)
{
 struct chbk *p_ch;
 struct ccw_dev_id dev_id;

 CLAW_DBF_TEXT_(2, setup, "%s", dev_name(&cdev->dev));
 privptr->channel[i].flag = i+1;
 p_ch = &privptr->channel[i];
 p_ch->cdev = cdev;
 snprintf(p_ch->id, CLAW_ID_SIZE, "cl-%s", dev_name(&cdev->dev));
 ccw_device_get_id(cdev, &dev_id);
 p_ch->devno = dev_id.devno;
 if ((p_ch->irb = kzalloc(sizeof (struct irb),GFP_KERNEL)) == ((void*)0)) {
  return -ENOMEM;
 }
 return 0;
}
