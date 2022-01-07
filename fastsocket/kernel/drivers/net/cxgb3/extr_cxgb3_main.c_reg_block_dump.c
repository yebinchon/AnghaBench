
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int t3_read_reg (struct adapter*,unsigned int) ;

__attribute__((used)) static inline void reg_block_dump(struct adapter *ap, void *buf,
      unsigned int start, unsigned int end)
{
 u32 *p = buf + start;

 for (; start <= end; start += sizeof(u32))
  *p++ = t3_read_reg(ap, start);
}
