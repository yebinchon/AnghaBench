
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_65xx_subdevice_private {int dummy; } ;
struct comedi_subdevice {struct ni_65xx_subdevice_private* private; } ;



__attribute__((used)) static inline struct ni_65xx_subdevice_private *sprivate(struct comedi_subdevice
        *subdev)
{
 return subdev->private;
}
