
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_fh {unsigned int resources; } ;
struct saa7134_dev {unsigned int resources; int lock; } ;


 int dprintk (char*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int res_get(struct saa7134_dev *dev, struct saa7134_fh *fh, unsigned int bit)
{
 if (fh->resources & bit)

  return 1;


 mutex_lock(&dev->lock);
 if (dev->resources & bit) {

  mutex_unlock(&dev->lock);
  return 0;
 }

 fh->resources |= bit;
 dev->resources |= bit;
 dprintk("res: get %d\n",bit);
 mutex_unlock(&dev->lock);
 return 1;
}
