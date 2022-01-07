
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ membase; } ;
struct pnx8xxx_port {TYPE_1__ port; } ;


 int __raw_writel (int,scalar_t__) ;

__attribute__((used)) static inline void serial_out(struct pnx8xxx_port *sport, int offset, int value)
{
 __raw_writel(value, sport->port.membase + offset);
}
