
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t pcmcia_insert_card (struct pcmcia_socket*) ;
 struct pcmcia_socket* to_socket (struct device*) ;

__attribute__((used)) static ssize_t pccard_store_insert(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 ssize_t ret;
 struct pcmcia_socket *s = to_socket(dev);

 if (!count)
  return -EINVAL;

 ret = pcmcia_insert_card(s);

 return ret ? ret : count;
}
