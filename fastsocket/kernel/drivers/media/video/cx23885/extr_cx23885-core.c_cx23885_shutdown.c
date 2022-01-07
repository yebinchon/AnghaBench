
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx23885_dev {int dummy; } ;


 int AUDIO_EXT_INT_MSK ;
 int AUDIO_INT_INT_MSK ;
 int AUD_EXT_DMA_CTL ;
 int AUD_INT_DMA_CTL ;
 int DEV_CNTRL2 ;
 int IR_CNTRL_REG ;
 int UART_CTL ;
 int VID_A_DMA_CTL ;
 int VID_A_INT_MSK ;
 int VID_B_DMA_CTL ;
 int VID_B_INT_MSK ;
 int VID_C_DMA_CTL ;
 int VID_C_INT_MSK ;
 int cx23885_irq_disable_all (struct cx23885_dev*) ;
 int cx_write (int ,int ) ;

__attribute__((used)) static void cx23885_shutdown(struct cx23885_dev *dev)
{

 cx_write(DEV_CNTRL2, 0);


 cx_write(IR_CNTRL_REG, 0);


 cx_write(VID_A_DMA_CTL, 0);
 cx_write(VID_B_DMA_CTL, 0);
 cx_write(VID_C_DMA_CTL, 0);


 cx_write(AUD_INT_DMA_CTL, 0);
 cx_write(AUD_EXT_DMA_CTL, 0);


 cx_write(UART_CTL, 0);


 cx23885_irq_disable_all(dev);
 cx_write(VID_A_INT_MSK, 0);
 cx_write(VID_B_INT_MSK, 0);
 cx_write(VID_C_INT_MSK, 0);
 cx_write(AUDIO_INT_INT_MSK, 0);
 cx_write(AUDIO_EXT_INT_MSK, 0);

}
