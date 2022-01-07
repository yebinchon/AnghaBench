
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int MAX_FLAGS ;
 int flags_free ;
 int set_bit (int,int ) ;
 int test_bit (int,int ) ;

void pasemi_dma_free_flag(int flag)
{
 BUG_ON(test_bit(flag, flags_free));
 BUG_ON(flag >= MAX_FLAGS);
 set_bit(flag, flags_free);
}
