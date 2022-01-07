
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_ring {int state; } ;


 unsigned int IXGBE_RXBUFFER_2K ;
 unsigned int IXGBE_RXBUFFER_3K ;
 unsigned int IXGBE_RXBUFFER_4K ;
 int PAGE_SIZE ;
 int __IXGBE_RX_FCOE ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline unsigned int ixgbe_rx_bufsz(struct ixgbe_ring *ring)
{





 return IXGBE_RXBUFFER_2K;
}
