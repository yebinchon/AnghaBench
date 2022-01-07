
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_private {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int mite_channel_lock; int soft_reg_copy_lock; int window_lock; } ;


 int alloc_private (struct comedi_device*,int) ;
 TYPE_1__* devpriv ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ni_alloc_private(struct comedi_device *dev)
{
 int ret;

 ret = alloc_private(dev, sizeof(struct ni_private));
 if (ret < 0)
  return ret;

 spin_lock_init(&devpriv->window_lock);
 spin_lock_init(&devpriv->soft_reg_copy_lock);
 spin_lock_init(&devpriv->mite_channel_lock);

 return 0;
}
