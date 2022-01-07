
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethoc_bd {void* addr; void* stat; } ;
struct ethoc {int dummy; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ ETHOC_BD_BASE ;
 void* ethoc_read (struct ethoc*,scalar_t__) ;

__attribute__((used)) static inline void ethoc_read_bd(struct ethoc *dev, int index,
  struct ethoc_bd *bd)
{
 loff_t offset = ETHOC_BD_BASE + (index * sizeof(struct ethoc_bd));
 bd->stat = ethoc_read(dev, offset + 0);
 bd->addr = ethoc_read(dev, offset + 4);
}
