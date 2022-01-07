
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int a2232_disable_rx_interrupts (void*) ;
 int a2232_disable_tx_interrupts (void*) ;

__attribute__((used)) static void a2232_close(void *ptr)
{
 a2232_disable_tx_interrupts(ptr);
 a2232_disable_rx_interrupts(ptr);

}
