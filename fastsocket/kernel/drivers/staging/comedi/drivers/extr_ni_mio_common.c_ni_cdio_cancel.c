
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;


 int CDO_Disarm_Bit ;
 int CDO_Empty_FIFO_Interrupt_Enable_Clear_Bit ;
 int CDO_Error_Interrupt_Enable_Clear_Bit ;
 int CDO_FIFO_Request_Interrupt_Enable_Clear_Bit ;
 int M_Offset_CDIO_Command ;
 int M_Offset_CDO_Mask_Enable ;
 int ni_release_cdo_mite_channel (struct comedi_device*) ;
 int ni_writel (int,int ) ;

__attribute__((used)) static int ni_cdio_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 ni_writel(CDO_Disarm_Bit | CDO_Error_Interrupt_Enable_Clear_Bit |
    CDO_Empty_FIFO_Interrupt_Enable_Clear_Bit |
    CDO_FIFO_Request_Interrupt_Enable_Clear_Bit,
    M_Offset_CDIO_Command);




 ni_writel(0, M_Offset_CDO_Mask_Enable);
 ni_release_cdo_mite_channel(dev);
 return 0;
}
