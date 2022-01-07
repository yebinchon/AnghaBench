
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct riscom_board {scalar_t__ base; } ;


 scalar_t__ RC_TO_ISA (unsigned short) ;
 unsigned char inb (scalar_t__) ;

__attribute__((used)) static inline unsigned char rc_in(struct riscom_board const *bp,
       unsigned short reg)
{
 return inb(bp->base + RC_TO_ISA(reg));
}
