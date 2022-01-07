
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx88_core {int lock; } ;
struct cx8800_fh {unsigned int resources; } ;
struct cx8800_dev {unsigned int resources; struct cx88_core* core; } ;


 int BUG_ON (int) ;
 int dprintk (int,char*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static
void res_free(struct cx8800_dev *dev, struct cx8800_fh *fh, unsigned int bits)
{
 struct cx88_core *core = dev->core;
 BUG_ON((fh->resources & bits) != bits);

 mutex_lock(&core->lock);
 fh->resources &= ~bits;
 dev->resources &= ~bits;
 dprintk(1,"res: put %d\n",bits);
 mutex_unlock(&core->lock);
}
