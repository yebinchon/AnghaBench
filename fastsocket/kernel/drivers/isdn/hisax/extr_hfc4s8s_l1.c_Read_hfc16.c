
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_short ;
typedef int u_int ;
typedef int u_char ;
struct TYPE_4__ {scalar_t__ iobase; } ;
typedef TYPE_1__ hfc4s8s_hw ;


 int SetRegAddr (TYPE_1__*,int ) ;
 int inw (int volatile) ;

__attribute__((used)) static inline u_short
Read_hfc16(hfc4s8s_hw * a, u_char b)
{
 SetRegAddr(a, b);
 return (inw((volatile u_int) a->iobase));
}
