
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_sq {int flags; } ;


 int T4_SQ_ONCHIP ;

__attribute__((used)) static inline int t4_sq_onchip(struct t4_sq *sq)
{
 return sq->flags & T4_SQ_ONCHIP;
}
