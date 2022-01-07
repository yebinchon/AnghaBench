
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_short ;
struct TYPE_2__ {scalar_t__ base; } ;


 unsigned int inl (scalar_t__) ;
 TYPE_1__* socket ;

__attribute__((used)) static unsigned int pcc_get(u_short sock, unsigned int reg)
{
 return inl(socket[sock].base + reg);
}
