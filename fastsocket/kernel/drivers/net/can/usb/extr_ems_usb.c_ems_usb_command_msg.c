
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ems_usb {int * tx_msg_buffer; int udev; } ;
struct ems_cpc_msg {scalar_t__ length; } ;


 size_t CPC_HEADER_SIZE ;
 scalar_t__ CPC_MSG_HEADER_LEN ;
 int memcpy (int *,struct ems_cpc_msg*,scalar_t__) ;
 int memset (int *,int ,size_t) ;
 int usb_bulk_msg (int ,int ,int *,scalar_t__,int*,int) ;
 int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static int ems_usb_command_msg(struct ems_usb *dev, struct ems_cpc_msg *msg)
{
 int actual_length;


 memcpy(&dev->tx_msg_buffer[CPC_HEADER_SIZE], msg,
        msg->length + CPC_MSG_HEADER_LEN);


 memset(&dev->tx_msg_buffer[0], 0, CPC_HEADER_SIZE);

 return usb_bulk_msg(dev->udev, usb_sndbulkpipe(dev->udev, 2),
       &dev->tx_msg_buffer[0],
       msg->length + CPC_MSG_HEADER_LEN + CPC_HEADER_SIZE,
       &actual_length, 1000);
}
