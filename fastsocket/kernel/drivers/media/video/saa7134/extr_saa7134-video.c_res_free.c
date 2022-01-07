
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_fh {unsigned int resources; } ;
struct saa7134_dev {unsigned int resources; int lock; } ;


 int BUG_ON (int) ;
 int dprintk (char*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static
void res_free(struct saa7134_dev *dev, struct saa7134_fh *fh, unsigned int bits)
{
 BUG_ON((fh->resources & bits) != bits);

 mutex_lock(&dev->lock);
 fh->resources &= ~bits;
 dev->resources &= ~bits;
 dprintk("res: put %d\n",bits);
 mutex_unlock(&dev->lock);
}
