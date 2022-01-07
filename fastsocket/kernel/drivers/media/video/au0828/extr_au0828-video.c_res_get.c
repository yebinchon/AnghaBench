
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au0828_fh {unsigned int resources; struct au0828_dev* dev; } ;
struct au0828_dev {unsigned int resources; int lock; } ;


 int dprintk (int,char*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int res_get(struct au0828_fh *fh, unsigned int bit)
{
 struct au0828_dev *dev = fh->dev;

 if (fh->resources & bit)

  return 1;


 mutex_lock(&dev->lock);
 if (dev->resources & bit) {

  mutex_unlock(&dev->lock);
  return 0;
 }

 fh->resources |= bit;
 dev->resources |= bit;
 dprintk(1, "res: get %d\n", bit);
 mutex_unlock(&dev->lock);
 return 1;
}
