
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pardevice {int port; } ;


 int parport_read_status (int ) ;

__attribute__((used)) static inline int read_ack(struct pardevice *p)
{
 return parport_read_status(p->port) & 0x40;
}
