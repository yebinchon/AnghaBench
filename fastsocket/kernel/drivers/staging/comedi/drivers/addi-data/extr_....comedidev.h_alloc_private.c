
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int private; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kzalloc (int,int ) ;

__attribute__((used)) static inline int alloc_private(struct comedi_device *dev, int size)
{
 dev->private = kzalloc(size, GFP_KERNEL);
 if (!dev->private)
  return -ENOMEM;
 return 0;
}
