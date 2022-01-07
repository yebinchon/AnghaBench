
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSPC ;
 int MAX_FLAGS ;
 int find_next_bit (int ,int,int ) ;
 int fun_free ;
 int test_and_clear_bit (int,int ) ;

int pasemi_dma_alloc_fun(void)
{
 int bit;

retry:
 bit = find_next_bit(fun_free, MAX_FLAGS, 0);
 if (bit >= MAX_FLAGS)
  return -ENOSPC;
 if (!test_and_clear_bit(bit, fun_free))
  goto retry;

 return bit;
}
