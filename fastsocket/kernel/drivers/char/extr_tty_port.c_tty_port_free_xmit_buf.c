
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int mutex; int * xmit_buf; } ;


 int free_page (unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void tty_port_free_xmit_buf(struct tty_port *port)
{
 mutex_lock(&port->mutex);
 if (port->xmit_buf != ((void*)0)) {
  free_page((unsigned long)port->xmit_buf);
  port->xmit_buf = ((void*)0);
 }
 mutex_unlock(&port->mutex);
}
