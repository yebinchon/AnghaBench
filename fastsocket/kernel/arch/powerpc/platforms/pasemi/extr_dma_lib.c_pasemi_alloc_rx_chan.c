
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOSPC ;
 int MAX_RXCH ;
 int MAX_TXCH ;
 int find_first_bit (int ,int ) ;
 int rxch_free ;
 int test_and_clear_bit (int,int ) ;

__attribute__((used)) static int pasemi_alloc_rx_chan(void)
{
 int bit;
retry:
 bit = find_first_bit(rxch_free, MAX_RXCH);
 if (bit >= MAX_TXCH)
  return -ENOSPC;
 if (!test_and_clear_bit(bit, rxch_free))
  goto retry;

 return bit;
}
