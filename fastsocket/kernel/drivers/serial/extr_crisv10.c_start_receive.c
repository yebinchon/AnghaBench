
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e100_serial {int * icmdadr; scalar_t__ uses_dma_in; } ;


 scalar_t__ IO_EXTRACT (int ,int ,int ) ;
 int IO_STATE (int ,int ,int ) ;
 scalar_t__ IO_STATE_VALUE (int ,int ,int ) ;
 int R_DMA_CH6_CMD ;
 int cmd ;
 int reset ;
 int start_recv_dma (struct e100_serial*) ;

__attribute__((used)) static void
start_receive(struct e100_serial *info)
{






 if (info->uses_dma_in) {


  *info->icmdadr = IO_STATE(R_DMA_CH6_CMD, cmd, reset);
  while (IO_EXTRACT(R_DMA_CH6_CMD, cmd, *info->icmdadr) ==
         IO_STATE_VALUE(R_DMA_CH6_CMD, cmd, reset));

  start_recv_dma(info);
 }
}
