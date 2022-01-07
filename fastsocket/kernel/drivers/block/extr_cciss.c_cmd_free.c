
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nr_frees; scalar_t__ cmd_pool_bits; int * cmd_pool; } ;
typedef TYPE_1__ ctlr_info_t ;
typedef int CommandList_struct ;


 int BITS_PER_LONG ;
 int clear_bit (int,scalar_t__) ;

__attribute__((used)) static void cmd_free(ctlr_info_t *h, CommandList_struct *c)
{
 int i;

 i = c - h->cmd_pool;
 clear_bit(i & (BITS_PER_LONG - 1),
    h->cmd_pool_bits + (i / BITS_PER_LONG));
 h->nr_frees++;
}
