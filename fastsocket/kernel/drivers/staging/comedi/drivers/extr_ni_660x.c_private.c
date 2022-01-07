
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_660x_private {int dummy; } ;
struct comedi_device {struct ni_660x_private* private; } ;



__attribute__((used)) static inline struct ni_660x_private *private(struct comedi_device *dev)
{
 return dev->private;
}
