
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ene_device {int w_pointer; int r_pointer; scalar_t__ hw_extra_buffer; } ;


 int ENE_FW2 ;
 int ENE_FW2_BUF_WPTR ;
 int ENE_FW_PACKET_SIZE ;
 int ENE_FW_RX_POINTER ;
 int dbg_verbose (char*,int,int ) ;
 int ene_read_reg (struct ene_device*,int ) ;

__attribute__((used)) static void ene_rx_read_hw_pointer(struct ene_device *dev)
{
 if (dev->hw_extra_buffer)
  dev->w_pointer = ene_read_reg(dev, ENE_FW_RX_POINTER);
 else
  dev->w_pointer = ene_read_reg(dev, ENE_FW2)
   & ENE_FW2_BUF_WPTR ? 0 : ENE_FW_PACKET_SIZE;

 dbg_verbose("RB: HW write pointer: %02x, driver read pointer: %02x",
  dev->w_pointer, dev->r_pointer);
}
