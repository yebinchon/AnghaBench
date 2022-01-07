
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


union i2c_smbus_data {int byte; int* block; int word; } ;
typedef int u8 ;
typedef int u16 ;
struct i2c_adapter {struct bfin_twi_iface* algo_data; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct bfin_twi_iface {int writeNum; int readNum; int* transPtr; int cur_mode; scalar_t__ result; int manual_stop; char read_write; int command; int timeout_count; int complete; TYPE_1__ timeout_timer; } ;


 int BUSBUSY ;
 int CONFIG_I2C_BLACKFIN_TWI_CLK_KHZ ;
 int ENXIO ;
 int FAST ;






 char I2C_SMBUS_READ ;

 int MCOMP ;
 int MDIR ;
 int MEN ;
 int MERR ;
 scalar_t__ POLL_TIMEOUT ;
 int RCVSERV ;
 int SSYNC () ;
 int TWI_ENA ;

 void* TWI_I2C_MODE_STANDARD ;

 int XMTSERV ;
 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 int init_completion (int *) ;
 scalar_t__ jiffies ;
 int read_CONTROL (struct bfin_twi_iface*) ;
 int read_MASTER_CTL (struct bfin_twi_iface*) ;
 int read_MASTER_STAT (struct bfin_twi_iface*) ;
 int wait_for_completion (int *) ;
 int write_FIFO_CTL (struct bfin_twi_iface*,int) ;
 int write_INT_MASK (struct bfin_twi_iface*,int) ;
 int write_INT_STAT (struct bfin_twi_iface*,int) ;
 int write_MASTER_ADDR (struct bfin_twi_iface*,int ) ;
 int write_MASTER_CTL (struct bfin_twi_iface*,int) ;
 int write_XMT_DATA8 (struct bfin_twi_iface*,int) ;
 int yield () ;

int bfin_twi_smbus_xfer(struct i2c_adapter *adap, u16 addr,
   unsigned short flags, char read_write,
   u8 command, int size, union i2c_smbus_data *data)
{
 struct bfin_twi_iface *iface = adap->algo_data;
 int rc = 0;

 if (!(read_CONTROL(iface) & TWI_ENA))
  return -ENXIO;

 while (read_MASTER_STAT(iface) & BUSBUSY)
  yield();

 iface->writeNum = 0;
 iface->readNum = 0;


 switch (size) {
 case 131:
  iface->transPtr = ((void*)0);
  iface->cur_mode = TWI_I2C_MODE_STANDARD;
  break;
 case 135:
  if (data == ((void*)0))
   iface->transPtr = ((void*)0);
  else {
   if (read_write == I2C_SMBUS_READ)
    iface->readNum = 1;
   else
    iface->writeNum = 1;
   iface->transPtr = &data->byte;
  }
  iface->cur_mode = TWI_I2C_MODE_STANDARD;
  break;
 case 134:
  if (read_write == I2C_SMBUS_READ) {
   iface->readNum = 1;
   iface->cur_mode = 129;
  } else {
   iface->writeNum = 1;
   iface->cur_mode = 128;
  }
  iface->transPtr = &data->byte;
  break;
 case 130:
  if (read_write == I2C_SMBUS_READ) {
   iface->readNum = 2;
   iface->cur_mode = 129;
  } else {
   iface->writeNum = 2;
   iface->cur_mode = 128;
  }
  iface->transPtr = (u8 *)&data->word;
  break;
 case 132:
  iface->writeNum = 2;
  iface->readNum = 2;
  iface->cur_mode = 129;
  iface->transPtr = (u8 *)&data->word;
  break;
 case 136:
  if (read_write == I2C_SMBUS_READ) {
   iface->readNum = 0;
   iface->cur_mode = 129;
  } else {
   iface->writeNum = data->block[0] + 1;
   iface->cur_mode = 128;
  }
  iface->transPtr = data->block;
  break;
 case 133:
  if (read_write == I2C_SMBUS_READ) {
   iface->readNum = data->block[0];
   iface->cur_mode = 129;
  } else {
   iface->writeNum = data->block[0];
   iface->cur_mode = 128;
  }
  iface->transPtr = (u8 *)&data->block[1];
  break;
 default:
  return -1;
 }

 iface->result = 0;
 iface->manual_stop = 0;
 iface->read_write = read_write;
 iface->command = command;
 iface->timeout_count = 10;
 init_completion(&(iface->complete));




 write_FIFO_CTL(iface, 0x3);
 SSYNC();
 write_FIFO_CTL(iface, 0);


 write_INT_STAT(iface, MERR | MCOMP | XMTSERV | RCVSERV);


 write_MASTER_ADDR(iface, addr);
 SSYNC();

 iface->timeout_timer.expires = jiffies + POLL_TIMEOUT;
 add_timer(&iface->timeout_timer);

 switch (iface->cur_mode) {
 case 128:
  write_XMT_DATA8(iface, iface->command);
  write_INT_MASK(iface, MCOMP | MERR |
   ((iface->read_write == I2C_SMBUS_READ) ?
   RCVSERV : XMTSERV));
  SSYNC();

  if (iface->writeNum + 1 <= 255)
   write_MASTER_CTL(iface, (iface->writeNum + 1) << 6);
  else {
   write_MASTER_CTL(iface, 0xff << 6);
   iface->manual_stop = 1;
  }

  write_MASTER_CTL(iface, read_MASTER_CTL(iface) | MEN |
   ((CONFIG_I2C_BLACKFIN_TWI_CLK_KHZ>100) ? FAST : 0));
  break;
 case 129:
  write_XMT_DATA8(iface, iface->command);
  write_INT_MASK(iface, MCOMP | MERR | RCVSERV | XMTSERV);
  SSYNC();

  if (iface->writeNum > 0)
   write_MASTER_CTL(iface, (iface->writeNum + 1) << 6);
  else
   write_MASTER_CTL(iface, 0x1 << 6);

  write_MASTER_CTL(iface, read_MASTER_CTL(iface) | MEN |
   ((CONFIG_I2C_BLACKFIN_TWI_CLK_KHZ>100) ? FAST : 0));
  break;
 default:
  write_MASTER_CTL(iface, 0);
  if (size != 131) {



   if (iface->read_write != I2C_SMBUS_READ) {
    if (iface->writeNum > 0) {
     write_XMT_DATA8(iface,
      *(iface->transPtr++));
     if (iface->writeNum <= 255)
      write_MASTER_CTL(iface,
       iface->writeNum << 6);
     else {
      write_MASTER_CTL(iface,
       0xff << 6);
      iface->manual_stop = 1;
     }
     iface->writeNum--;
    } else {
     write_XMT_DATA8(iface, iface->command);
     write_MASTER_CTL(iface, 1 << 6);
    }
   } else {
    if (iface->readNum > 0 && iface->readNum <= 255)
     write_MASTER_CTL(iface,
      iface->readNum << 6);
    else if (iface->readNum > 255) {
     write_MASTER_CTL(iface, 0xff << 6);
     iface->manual_stop = 1;
    } else {
     del_timer(&iface->timeout_timer);
     break;
    }
   }
  }
  write_INT_MASK(iface, MCOMP | MERR |
   ((iface->read_write == I2C_SMBUS_READ) ?
   RCVSERV : XMTSERV));
  SSYNC();


  write_MASTER_CTL(iface, read_MASTER_CTL(iface) | MEN |
   ((iface->read_write == I2C_SMBUS_READ) ? MDIR : 0) |
   ((CONFIG_I2C_BLACKFIN_TWI_CLK_KHZ > 100) ? FAST : 0));
  break;
 }
 SSYNC();

 wait_for_completion(&iface->complete);

 rc = (iface->result >= 0) ? 0 : -1;

 return rc;
}
