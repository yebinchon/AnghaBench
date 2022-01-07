
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfin_twi_iface {int writeNum; int* transPtr; scalar_t__ cur_mode; int manual_stop; int cur_msg; int msg_num; int readNum; int result; int complete; TYPE_1__* pmsg; int read_write; } ;
struct TYPE_2__ {int flags; int* buf; int len; int addr; } ;


 unsigned short ANAK ;
 unsigned short BUFRDERR ;
 int EIO ;
 int I2C_M_RD ;
 int I2C_SMBUS_READ ;
 int I2C_SMBUS_WRITE ;
 unsigned short MCOMP ;
 int MDIR ;
 unsigned short MERR ;
 unsigned short RCVSERV ;
 int RSTART ;
 int SSYNC () ;
 int STOP ;
 scalar_t__ TWI_I2C_MODE_COMBINED ;
 scalar_t__ TWI_I2C_MODE_REPEAT ;
 scalar_t__ TWI_I2C_MODE_STANDARDSUB ;
 unsigned short XMTSERV ;
 int complete (int *) ;
 unsigned short read_INT_STAT (struct bfin_twi_iface*) ;
 int read_MASTER_CTL (struct bfin_twi_iface*) ;
 unsigned short read_MASTER_STAT (struct bfin_twi_iface*) ;
 int read_RCV_DATA8 (struct bfin_twi_iface*) ;
 int write_INT_MASK (struct bfin_twi_iface*,int ) ;
 int write_INT_STAT (struct bfin_twi_iface*,unsigned short) ;
 int write_MASTER_ADDR (struct bfin_twi_iface*,int ) ;
 int write_MASTER_CTL (struct bfin_twi_iface*,int) ;
 int write_MASTER_STAT (struct bfin_twi_iface*,int) ;
 int write_XMT_DATA8 (struct bfin_twi_iface*,int ) ;

__attribute__((used)) static void bfin_twi_handle_interrupt(struct bfin_twi_iface *iface)
{
 unsigned short twi_int_status = read_INT_STAT(iface);
 unsigned short mast_stat = read_MASTER_STAT(iface);

 if (twi_int_status & XMTSERV) {

  if (iface->writeNum > 0) {
   write_XMT_DATA8(iface, *(iface->transPtr++));
   iface->writeNum--;
  }



  else if (iface->cur_mode == TWI_I2C_MODE_COMBINED)
   write_MASTER_CTL(iface,
    read_MASTER_CTL(iface) | MDIR | RSTART);
  else if (iface->manual_stop)
   write_MASTER_CTL(iface,
    read_MASTER_CTL(iface) | STOP);
  else if (iface->cur_mode == TWI_I2C_MODE_REPEAT &&
           iface->cur_msg + 1 < iface->msg_num) {
   if (iface->pmsg[iface->cur_msg + 1].flags & I2C_M_RD)
    write_MASTER_CTL(iface,
     read_MASTER_CTL(iface) | RSTART | MDIR);
   else
    write_MASTER_CTL(iface,
     (read_MASTER_CTL(iface) | RSTART) & ~MDIR);
  }
  SSYNC();

  write_INT_STAT(iface, XMTSERV);
  SSYNC();
 }
 if (twi_int_status & RCVSERV) {
  if (iface->readNum > 0) {

   *(iface->transPtr) = read_RCV_DATA8(iface);
   if (iface->cur_mode == TWI_I2C_MODE_COMBINED) {



    iface->cur_mode = TWI_I2C_MODE_STANDARDSUB;



    if (iface->readNum == 1 && iface->manual_stop)
     iface->readNum = *iface->transPtr + 1;
   }
   iface->transPtr++;
   iface->readNum--;
  } else if (iface->manual_stop) {
   write_MASTER_CTL(iface,
    read_MASTER_CTL(iface) | STOP);
   SSYNC();
  } else if (iface->cur_mode == TWI_I2C_MODE_REPEAT &&
             iface->cur_msg + 1 < iface->msg_num) {
   if (iface->pmsg[iface->cur_msg + 1].flags & I2C_M_RD)
    write_MASTER_CTL(iface,
     read_MASTER_CTL(iface) | RSTART | MDIR);
   else
    write_MASTER_CTL(iface,
     (read_MASTER_CTL(iface) | RSTART) & ~MDIR);
   SSYNC();
  }

  write_INT_STAT(iface, RCVSERV);
  SSYNC();
 }
 if (twi_int_status & MERR) {
  write_INT_STAT(iface, MERR);
  write_INT_MASK(iface, 0);
  write_MASTER_STAT(iface, 0x3e);
  write_MASTER_CTL(iface, 0);
  SSYNC();
  iface->result = -EIO;



  if (twi_int_status & MCOMP) {
   write_INT_STAT(iface, MCOMP);
   write_INT_MASK(iface, 0);
   write_MASTER_CTL(iface, 0);
   SSYNC();



   if (iface->writeNum == 0 && (mast_stat & BUFRDERR))
    iface->result = 1;



   else if (!(mast_stat & ANAK))
    iface->result = 0;
  }
  complete(&iface->complete);
  return;
 }
 if (twi_int_status & MCOMP) {
  write_INT_STAT(iface, MCOMP);
  SSYNC();
  if (iface->cur_mode == TWI_I2C_MODE_COMBINED) {
   if (iface->readNum == 0) {



    iface->readNum = 1;
    iface->manual_stop = 1;
    write_MASTER_CTL(iface,
     read_MASTER_CTL(iface) | (0xff << 6));
   } else {



    write_MASTER_CTL(iface,
     (read_MASTER_CTL(iface) &
     (~(0xff << 6))) |
     (iface->readNum << 6));
   }

   write_MASTER_CTL(iface,
    read_MASTER_CTL(iface) & ~RSTART);
   SSYNC();
  } else if (iface->cur_mode == TWI_I2C_MODE_REPEAT &&
    iface->cur_msg+1 < iface->msg_num) {
   iface->cur_msg++;
   iface->transPtr = iface->pmsg[iface->cur_msg].buf;
   iface->writeNum = iface->readNum =
    iface->pmsg[iface->cur_msg].len;

   write_MASTER_ADDR(iface,
    iface->pmsg[iface->cur_msg].addr);
   if (iface->pmsg[iface->cur_msg].flags & I2C_M_RD)
    iface->read_write = I2C_SMBUS_READ;
   else {
    iface->read_write = I2C_SMBUS_WRITE;

    if (iface->writeNum > 0) {
     write_XMT_DATA8(iface,
      *(iface->transPtr++));
     iface->writeNum--;
     SSYNC();
    }
   }

   if (iface->pmsg[iface->cur_msg].len <= 255)
     write_MASTER_CTL(iface,
     (read_MASTER_CTL(iface) &
     (~(0xff << 6))) |
    (iface->pmsg[iface->cur_msg].len << 6));
   else {
    write_MASTER_CTL(iface,
     (read_MASTER_CTL(iface) |
     (0xff << 6)));
    iface->manual_stop = 1;
   }

   write_MASTER_CTL(iface,
    read_MASTER_CTL(iface) & ~RSTART);
   SSYNC();
  } else {
   iface->result = 1;
   write_INT_MASK(iface, 0);
   write_MASTER_CTL(iface, 0);
   SSYNC();
   complete(&iface->complete);
  }
 }
}
