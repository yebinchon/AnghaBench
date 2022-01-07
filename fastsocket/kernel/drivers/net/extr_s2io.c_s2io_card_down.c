
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2io_nic {int dummy; } ;


 int do_s2io_card_down (struct s2io_nic*,int) ;

__attribute__((used)) static void s2io_card_down(struct s2io_nic *sp)
{
 do_s2io_card_down(sp, 1);
}
