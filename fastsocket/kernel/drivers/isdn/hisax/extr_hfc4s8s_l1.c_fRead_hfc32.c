
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int ;
struct TYPE_3__ {scalar_t__ iobase; } ;
typedef TYPE_1__ hfc4s8s_hw ;


 int inl (int volatile) ;

__attribute__((used)) static inline u_long
fRead_hfc32(hfc4s8s_hw * a)
{
 return (inl((volatile u_int) a->iobase));
}
