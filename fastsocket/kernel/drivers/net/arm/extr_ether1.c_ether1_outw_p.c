
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 scalar_t__ ETHER1_RAM ;
 int REG_PAGE ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int writeb (int,int ) ;
 int writew (unsigned short,scalar_t__) ;

__attribute__((used)) static inline void
ether1_outw_p (struct net_device *dev, unsigned short val, int addr, int svflgs)
{
 unsigned long flags;

 if (svflgs)
  local_irq_save (flags);

 writeb(addr >> 12, REG_PAGE);
 writew(val, ETHER1_RAM + ((addr & 4095) << 1));
 if (svflgs)
  local_irq_restore (flags);
}
