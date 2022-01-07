
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {int lock; } ;
struct cx8800_fh {unsigned int resources; } ;
struct cx8800_dev {unsigned int resources; struct cx88_core* core; } ;


 int dprintk (int,char*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int res_get(struct cx8800_dev *dev, struct cx8800_fh *fh, unsigned int bit)
{
 struct cx88_core *core = dev->core;
 if (fh->resources & bit)

  return 1;


 mutex_lock(&core->lock);
 if (dev->resources & bit) {

  mutex_unlock(&core->lock);
  return 0;
 }

 fh->resources |= bit;
 dev->resources |= bit;
 dprintk(1,"res: get %d\n",bit);
 mutex_unlock(&core->lock);
 return 1;
}
