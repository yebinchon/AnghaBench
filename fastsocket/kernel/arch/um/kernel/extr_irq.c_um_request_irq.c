
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irq_handler_t ;


 int activate_fd (unsigned int,int,int,void*) ;
 int request_irq (unsigned int,int ,unsigned long,char const*,void*) ;

int um_request_irq(unsigned int irq, int fd, int type,
     irq_handler_t handler,
     unsigned long irqflags, const char * devname,
     void *dev_id)
{
 int err;

 if (fd != -1) {
  err = activate_fd(irq, fd, type, dev_id);
  if (err)
   return err;
 }

 return request_irq(irq, handler, irqflags, devname, dev_id);
}
