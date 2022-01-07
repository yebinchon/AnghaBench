
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rt2x00_dev {int dummy; } ;


 int EACCES ;
 int H2M_BBP_AGENT ;
 int H2M_MAILBOX_CSR ;
 unsigned int REGISTER_BUSY_COUNT ;
 int REGISTER_BUSY_DELAY ;
 int msleep (int) ;
 int rt2800_bbp_read (struct rt2x00_dev*,int ,int*) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_err (struct rt2x00_dev*,char*) ;
 int udelay (int ) ;

__attribute__((used)) static int rt2800_wait_bbp_ready(struct rt2x00_dev *rt2x00dev)
{
 unsigned int i;
 u8 value;





 rt2800_register_write(rt2x00dev, H2M_BBP_AGENT, 0);
 rt2800_register_write(rt2x00dev, H2M_MAILBOX_CSR, 0);
 msleep(1);

 for (i = 0; i < REGISTER_BUSY_COUNT; i++) {
  rt2800_bbp_read(rt2x00dev, 0, &value);
  if ((value != 0xff) && (value != 0x00))
   return 0;
  udelay(REGISTER_BUSY_DELAY);
 }

 rt2x00_err(rt2x00dev, "BBP register access failed, aborting\n");
 return -EACCES;
}
