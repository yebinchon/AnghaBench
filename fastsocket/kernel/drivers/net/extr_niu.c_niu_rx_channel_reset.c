
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int dummy; } ;


 int RXDMA_CFIG1 (int) ;
 int RXDMA_CFIG1_RST ;
 int niu_set_and_wait_clear (struct niu*,int ,int ,int,int,char*) ;

__attribute__((used)) static int niu_rx_channel_reset(struct niu *np, int channel)
{
 return niu_set_and_wait_clear(np, RXDMA_CFIG1(channel),
          RXDMA_CFIG1_RST, 1000, 10,
          "RXDMA_CFIG1");
}
