
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b44 {int sdev; } ;


 int ssb_write32 (int ,unsigned long,unsigned long) ;

__attribute__((used)) static inline void bw32(const struct b44 *bp,
   unsigned long reg, unsigned long val)
{
 ssb_write32(bp->sdev, reg, val);
}
