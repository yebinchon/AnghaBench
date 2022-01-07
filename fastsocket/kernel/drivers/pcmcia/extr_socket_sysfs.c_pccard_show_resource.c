
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {scalar_t__ resource_setup_done; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct pcmcia_socket* to_socket (struct device*) ;

__attribute__((used)) static ssize_t pccard_show_resource(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct pcmcia_socket *s = to_socket(dev);
 return sprintf(buf, "%s\n", s->resource_setup_done ? "yes" : "no");
}
