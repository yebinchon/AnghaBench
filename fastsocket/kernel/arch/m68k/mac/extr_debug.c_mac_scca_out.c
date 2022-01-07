
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cha_a_ctrl; char cha_a_data; } ;


 int barrier () ;
 TYPE_1__ scc ;
 int uSEC ;

__attribute__((used)) static inline void mac_scca_out(char c)
{
 int i;

 do {
  for (i = uSEC; i > 0; --i)
   barrier();
 } while (!(scc.cha_a_ctrl & 0x04));
 for (i = uSEC; i > 0; --i)
  barrier();
 scc.cha_a_data = c;
}
