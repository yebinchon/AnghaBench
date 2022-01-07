
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 unsigned int NUM_RESOURCES ;
 int put_resources (struct comedi_device*,unsigned int,unsigned char) ;

__attribute__((used)) static inline void put_all_resources(struct comedi_device *dev,
         unsigned char owner)
{
 put_resources(dev, (1U << NUM_RESOURCES) - 1, owner);
}
