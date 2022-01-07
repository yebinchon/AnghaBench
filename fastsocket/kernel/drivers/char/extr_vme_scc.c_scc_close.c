
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int scc_disable_rx_interrupts (void*) ;
 int scc_disable_tx_interrupts (void*) ;

__attribute__((used)) static void scc_close(void *ptr)
{
 scc_disable_tx_interrupts(ptr);
 scc_disable_rx_interrupts(ptr);
}
