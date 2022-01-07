
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {unsigned char* xmit_buf; int mutex; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ get_zeroed_page (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int tty_port_alloc_xmit_buf(struct tty_port *port)
{

 mutex_lock(&port->mutex);
 if (port->xmit_buf == ((void*)0))
  port->xmit_buf = (unsigned char *)get_zeroed_page(GFP_KERNEL);
 mutex_unlock(&port->mutex);
 if (port->xmit_buf == ((void*)0))
  return -ENOMEM;
 return 0;
}
