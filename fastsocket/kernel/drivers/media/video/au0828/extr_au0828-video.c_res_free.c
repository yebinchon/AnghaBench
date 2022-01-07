
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au0828_fh {unsigned int resources; struct au0828_dev* dev; } ;
struct au0828_dev {unsigned int resources; int lock; } ;


 int BUG_ON (int) ;
 int dprintk (int,char*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void res_free(struct au0828_fh *fh, unsigned int bits)
{
 struct au0828_dev *dev = fh->dev;

 BUG_ON((fh->resources & bits) != bits);

 mutex_lock(&dev->lock);
 fh->resources &= ~bits;
 dev->resources &= ~bits;
 dprintk(1, "res: put %d\n", bits);
 mutex_unlock(&dev->lock);
}
