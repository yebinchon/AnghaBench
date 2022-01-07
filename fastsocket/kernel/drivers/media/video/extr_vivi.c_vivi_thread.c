
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivi_fh {struct vivi_dev* dev; } ;
struct vivi_dev {int dummy; } ;


 int dprintk (struct vivi_dev*,int,char*) ;
 scalar_t__ kthread_should_stop () ;
 int set_freezable () ;
 int vivi_sleep (struct vivi_fh*) ;

__attribute__((used)) static int vivi_thread(void *data)
{
 struct vivi_fh *fh = data;
 struct vivi_dev *dev = fh->dev;

 dprintk(dev, 1, "thread started\n");

 set_freezable();

 for (;;) {
  vivi_sleep(fh);

  if (kthread_should_stop())
   break;
 }
 dprintk(dev, 1, "thread: exit\n");
 return 0;
}
