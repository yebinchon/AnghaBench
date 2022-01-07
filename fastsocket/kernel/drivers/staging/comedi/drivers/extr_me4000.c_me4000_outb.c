
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int PORT_PDEBUG (char*,unsigned char,unsigned long) ;
 int outb (unsigned char,unsigned long) ;

__attribute__((used)) static inline void me4000_outb(struct comedi_device *dev, unsigned char value,
          unsigned long port)
{
 PORT_PDEBUG("--> 0x%02X port 0x%04lX\n", value, port);
 outb(value, port);
}
