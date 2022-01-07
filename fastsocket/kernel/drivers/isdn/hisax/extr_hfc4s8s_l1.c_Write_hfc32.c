
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
typedef int u_char ;
struct TYPE_4__ {int iobase; } ;
typedef TYPE_1__ hfc4s8s_hw ;


 int SetRegAddr (TYPE_1__*,int ) ;
 int outl (int ,int ) ;

__attribute__((used)) static inline void
Write_hfc32(hfc4s8s_hw * a, u_char b, u_long c)
{
 SetRegAddr(a, b);
 outl(c, a->iobase);
}
