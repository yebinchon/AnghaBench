
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int PORT_PDEBUG (char*,unsigned long,unsigned long) ;
 int outl (unsigned long,unsigned long) ;

__attribute__((used)) static inline void me4000_outl(struct comedi_device *dev, unsigned long value,
          unsigned long port)
{
 PORT_PDEBUG("--> 0x%08lX port 0x%04lX\n", value, port);
 outl(value, port);
}
