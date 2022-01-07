
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scoop_dev {scalar_t__ base; } ;


 scalar_t__ SCOOP_GPWR ;
 unsigned short ioread16 (scalar_t__) ;
 int iowrite16 (unsigned short,scalar_t__) ;

__attribute__((used)) static void __scoop_gpio_set(struct scoop_dev *sdev,
   unsigned offset, int value)
{
 unsigned short gpwr;

 gpwr = ioread16(sdev->base + SCOOP_GPWR);
 if (value)
  gpwr |= 1 << (offset + 1);
 else
  gpwr &= ~(1 << (offset + 1));
 iowrite16(gpwr, sdev->base + SCOOP_GPWR);
}
