
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int poll_table ;


 unsigned int POLLIN ;

__attribute__((used)) static unsigned int fdtv_ca_io_poll(struct file *file, poll_table *wait)
{
 return POLLIN;
}
