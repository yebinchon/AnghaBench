
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_private {int dummy; } ;
struct comedi_device {struct pcidas64_private* private; } ;



__attribute__((used)) static inline struct pcidas64_private *priv(struct comedi_device *dev)
{
 return dev->private;
}
