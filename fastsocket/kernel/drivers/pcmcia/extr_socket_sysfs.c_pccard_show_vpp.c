
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Vpp; } ;
struct pcmcia_socket {int state; TYPE_1__ socket; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int SOCKET_PRESENT ;
 int sprintf (char*,char*,int,int) ;
 struct pcmcia_socket* to_socket (struct device*) ;

__attribute__((used)) static ssize_t pccard_show_vpp(struct device *dev, struct device_attribute *attr,
          char *buf)
{
 struct pcmcia_socket *s = to_socket(dev);
 if (!(s->state & SOCKET_PRESENT))
  return -ENODEV;
 return sprintf(buf, "%d.%dV\n", s->socket.Vpp / 10, s->socket.Vpp % 10);
}
