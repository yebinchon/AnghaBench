
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SE_U3_RX_INT ;
 int SE_U5_RX_INT ;
 scalar_t__ UART3_BASE_VA ;
 scalar_t__ UART5_BASE_VA ;
 scalar_t__ UART_FCR_OFFSET ;
 int UART_FIFO_SIZE ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;
 int start_int_ack (int ) ;
 int start_int_set_rising_edge (int ) ;
 int start_int_umask (int ) ;

void pnx4008_uart_init(void)
{
 u32 tmp;
 int i = UART_FIFO_SIZE;

 __raw_writel(0xC1, UART5_BASE_VA + UART_FCR_OFFSET);
 __raw_writel(0xC1, UART3_BASE_VA + UART_FCR_OFFSET);


 __raw_writel(0x00, UART5_BASE_VA);
 __raw_writel(0x00, UART3_BASE_VA);

 while (i--) {
  tmp = __raw_readl(UART5_BASE_VA);
  tmp = __raw_readl(UART3_BASE_VA);
 }
 __raw_writel(0, UART5_BASE_VA + UART_FCR_OFFSET);
 __raw_writel(0, UART3_BASE_VA + UART_FCR_OFFSET);


 start_int_set_rising_edge(SE_U3_RX_INT);
 start_int_ack(SE_U3_RX_INT);
 start_int_umask(SE_U3_RX_INT);

 start_int_set_rising_edge(SE_U5_RX_INT);
 start_int_ack(SE_U5_RX_INT);
 start_int_umask(SE_U5_RX_INT);
}
