
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b44 {int sdev; } ;


 unsigned long ssb_read32 (int ,unsigned long) ;

__attribute__((used)) static inline unsigned long br32(const struct b44 *bp, unsigned long reg)
{
 return ssb_read32(bp->sdev, reg);
}
