
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int PORT_PDEBUG (char*,unsigned char,unsigned long) ;
 unsigned char inb (unsigned long) ;

__attribute__((used)) static inline unsigned char me4000_inb(struct comedi_device *dev,
           unsigned long port)
{
 unsigned char value;
 value = inb(port);
 PORT_PDEBUG("<-- 0x%08X port 0x%04lX\n", value, port);
 return value;
}
