
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_short ;
struct TYPE_2__ {scalar_t__ base; } ;


 int outl (unsigned int,scalar_t__) ;
 TYPE_1__* socket ;

__attribute__((used)) static void pcc_set(u_short sock, unsigned int reg, unsigned int data)
{
   outl(data, socket[sock].base + reg);
}
