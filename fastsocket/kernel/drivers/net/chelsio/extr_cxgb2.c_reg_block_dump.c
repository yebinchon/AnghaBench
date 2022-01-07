
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {scalar_t__ regs; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline void reg_block_dump(struct adapter *ap, void *buf,
      unsigned int start, unsigned int end)
{
 u32 *p = buf + start;

 for ( ; start <= end; start += sizeof(u32))
  *p++ = readl(ap->regs + start);
}
