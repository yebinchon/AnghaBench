
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int async_queue; } ;
struct file {struct port* private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int port_fops_fasync(int fd, struct file *filp, int mode)
{
 struct port *port;

 port = filp->private_data;
 return fasync_helper(fd, filp, mode, &port->async_queue);
}
