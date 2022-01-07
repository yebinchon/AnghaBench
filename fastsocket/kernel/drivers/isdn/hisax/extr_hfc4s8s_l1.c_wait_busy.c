
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {scalar_t__ iobase; } ;
typedef TYPE_1__ hfc4s8s_hw ;


 int M_BUSY ;
 int R_STATUS ;
 int SetRegAddr (TYPE_1__*,int ) ;
 int inb (int volatile) ;

__attribute__((used)) static inline void
wait_busy(hfc4s8s_hw * a)
{
 SetRegAddr(a, R_STATUS);
 while (inb((volatile u_int) a->iobase) & M_BUSY);
}
