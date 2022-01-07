
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2io_nic {int state; } ;


 int __S2IO_STATE_CARD_UP ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int is_s2io_card_up(const struct s2io_nic *sp)
{
 return test_bit(__S2IO_STATE_CARD_UP, &sp->state);
}
