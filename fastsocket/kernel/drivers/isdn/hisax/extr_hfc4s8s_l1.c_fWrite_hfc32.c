
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int iobase; } ;
typedef TYPE_1__ hfc4s8s_hw ;


 int outl (int ,int ) ;

__attribute__((used)) static inline void
fWrite_hfc32(hfc4s8s_hw * a, u_long c)
{
 outl(c, a->iobase);
}
