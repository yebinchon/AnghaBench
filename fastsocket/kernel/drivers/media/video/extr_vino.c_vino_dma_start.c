
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vino_channel_settings {scalar_t__ channel; } ;
struct TYPE_2__ {int control; } ;


 scalar_t__ VINO_CHANNEL_A ;
 int VINO_CTRL_A_DMA_ENBL ;
 int VINO_CTRL_B_DMA_ENBL ;
 int dprintk (char*) ;
 TYPE_1__* vino ;

__attribute__((used)) static inline void vino_dma_start(struct vino_channel_settings *vcs)
{
 u32 ctrl = vino->control;

 dprintk("vino_dma_start():\n");
 ctrl |= (vcs->channel == VINO_CHANNEL_A) ?
  VINO_CTRL_A_DMA_ENBL : VINO_CTRL_B_DMA_ENBL;
 vino->control = ctrl;
}
