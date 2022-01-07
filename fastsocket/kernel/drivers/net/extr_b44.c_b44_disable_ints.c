
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b44 {int dummy; } ;


 int B44_IMASK ;
 int __b44_disable_ints (struct b44*) ;
 int br32 (struct b44*,int ) ;

__attribute__((used)) static void b44_disable_ints(struct b44 *bp)
{
 __b44_disable_ints(bp);


 br32(bp, B44_IMASK);
}
