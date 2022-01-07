
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {scalar_t__ iobase; } ;
typedef TYPE_1__ hfc4s8s_hw ;


 int outb (int ,scalar_t__) ;

__attribute__((used)) static inline void
SetRegAddr(hfc4s8s_hw * a, u_char b)
{
 outb(b, (a->iobase) + 4);
}
