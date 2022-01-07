
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int pcmcia_load_firmware(struct pcmcia_device *dev, char * filename)
{
 return -ENODEV;
}
