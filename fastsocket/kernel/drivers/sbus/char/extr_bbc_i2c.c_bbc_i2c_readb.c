
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bbc_i2c_client {unsigned char address; unsigned char bus; struct bbc_i2c_bus* bp; } ;
struct bbc_i2c_bus {int * i2c_control_regs; int * i2c_bussel_reg; } ;


 unsigned char I2C_PCF_ENI ;
 unsigned char I2C_PCF_ESO ;
 unsigned char I2C_PCF_LRB ;
 unsigned char I2C_PCF_START ;
 unsigned char I2C_PCF_STOP ;
 unsigned char readb (int *) ;
 scalar_t__ wait_for_pin (struct bbc_i2c_bus*,unsigned char*) ;
 int writeb (unsigned char,int *) ;

int bbc_i2c_readb(struct bbc_i2c_client *client, unsigned char *byte, int off)
{
 struct bbc_i2c_bus *bp = client->bp;
 unsigned char address = client->address, status;
 int ret = -1;

 if (bp->i2c_bussel_reg != ((void*)0))
  writeb(client->bus, bp->i2c_bussel_reg);

 writeb(address, bp->i2c_control_regs + 0x1);
 writeb(I2C_PCF_START, bp->i2c_control_regs + 0x0);
 if (wait_for_pin(bp, &status))
  goto out;

 writeb(off, bp->i2c_control_regs + 0x1);
 if (wait_for_pin(bp, &status) ||
     (status & I2C_PCF_LRB) != 0)
  goto out;

 writeb(I2C_PCF_STOP, bp->i2c_control_regs + 0x0);

 address |= 0x1;

 writeb(address, bp->i2c_control_regs + 0x1);
 writeb(I2C_PCF_START, bp->i2c_control_regs + 0x0);
 if (wait_for_pin(bp, &status))
  goto out;




 (void) readb(bp->i2c_control_regs + 0x1);
 if (wait_for_pin(bp, &status))
  goto out;

 writeb(I2C_PCF_ESO | I2C_PCF_ENI, bp->i2c_control_regs + 0x0);
 *byte = readb(bp->i2c_control_regs + 0x1);
 if (wait_for_pin(bp, &status))
  goto out;

 ret = 0;

out:
 writeb(I2C_PCF_STOP, bp->i2c_control_regs + 0x0);
 (void) readb(bp->i2c_control_regs + 0x1);

 return ret;
}
