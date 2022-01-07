
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b44 {int imask; } ;


 int B44_IMASK ;
 int bw32 (struct b44*,int ,int ) ;

__attribute__((used)) static void b44_enable_ints(struct b44 *bp)
{
 bw32(bp, B44_IMASK, bp->imask);
}
