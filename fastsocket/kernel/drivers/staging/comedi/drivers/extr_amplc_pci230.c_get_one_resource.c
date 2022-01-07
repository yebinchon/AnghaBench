
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int get_resources (struct comedi_device*,unsigned int,unsigned char) ;

__attribute__((used)) static inline int get_one_resource(struct comedi_device *dev,
       unsigned int resource, unsigned char owner)
{
 return get_resources(dev, (1U << resource), owner);
}
