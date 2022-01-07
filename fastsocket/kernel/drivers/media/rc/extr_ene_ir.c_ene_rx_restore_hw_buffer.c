
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ene_device {int extra_buf1_address; int extra_buf1_len; int extra_buf2_address; int extra_buf2_len; int hw_extra_buffer; } ;


 int ENE_FW1 ;
 int ENE_FW1_EXTRA_BUF_HND ;
 scalar_t__ ENE_FW_SAMPLE_BUFFER ;
 int ene_clear_reg_mask (struct ene_device*,int ,int ) ;
 int ene_write_reg (struct ene_device*,scalar_t__,int) ;

__attribute__((used)) static void ene_rx_restore_hw_buffer(struct ene_device *dev)
{
 if (!dev->hw_extra_buffer)
  return;

 ene_write_reg(dev, ENE_FW_SAMPLE_BUFFER + 0,
    dev->extra_buf1_address & 0xFF);
 ene_write_reg(dev, ENE_FW_SAMPLE_BUFFER + 1,
    dev->extra_buf1_address >> 8);
 ene_write_reg(dev, ENE_FW_SAMPLE_BUFFER + 2, dev->extra_buf1_len);

 ene_write_reg(dev, ENE_FW_SAMPLE_BUFFER + 3,
    dev->extra_buf2_address & 0xFF);
 ene_write_reg(dev, ENE_FW_SAMPLE_BUFFER + 4,
    dev->extra_buf2_address >> 8);
 ene_write_reg(dev, ENE_FW_SAMPLE_BUFFER + 5,
    dev->extra_buf2_len);
 ene_clear_reg_mask(dev, ENE_FW1, ENE_FW1_EXTRA_BUF_HND);
}
