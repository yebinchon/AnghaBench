
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_i2c_data {int dev; int lock; } ;
typedef enum sh_mobile_i2c_op { ____Placeholder_sh_mobile_i2c_op } sh_mobile_i2c_op ;


 int ICCR (struct sh_mobile_i2c_data*) ;
 int ICDR (struct sh_mobile_i2c_data*) ;
 int ICIC (struct sh_mobile_i2c_data*) ;
 int ICIC_ALE ;
 int ICIC_DTEE ;
 int ICIC_TACKE ;
 int ICIC_WAITE ;
 int dev_dbg (int ,char*,int,unsigned char) ;
 unsigned char ioread8 (int ) ;
 int iowrite8 (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned char i2c_op(struct sh_mobile_i2c_data *pd,
       enum sh_mobile_i2c_op op, unsigned char data)
{
 unsigned char ret = 0;
 unsigned long flags;

 dev_dbg(pd->dev, "op %d, data in 0x%02x\n", op, data);

 spin_lock_irqsave(&pd->lock, flags);

 switch (op) {
 case 132:
  iowrite8(0x94, ICCR(pd));
  break;
 case 130:
  iowrite8(ICIC_WAITE | ICIC_ALE | ICIC_TACKE, ICIC(pd));
  iowrite8(data, ICDR(pd));
  break;
 case 131:
  iowrite8(data, ICDR(pd));
  break;
 case 129:
  iowrite8(data, ICDR(pd));
  iowrite8(0x90, ICCR(pd));
  break;
 case 128:
  iowrite8(0x81, ICCR(pd));
  break;
 case 135:
  ret = ioread8(ICDR(pd));
  break;
 case 134:
  iowrite8(ICIC_DTEE | ICIC_WAITE | ICIC_ALE | ICIC_TACKE,
    ICIC(pd));
  iowrite8(0xc0, ICCR(pd));
  break;
 case 133:
  iowrite8(ICIC_DTEE | ICIC_WAITE | ICIC_ALE | ICIC_TACKE,
    ICIC(pd));
  ret = ioread8(ICDR(pd));
  iowrite8(0xc0, ICCR(pd));
  break;
 }

 spin_unlock_irqrestore(&pd->lock, flags);

 dev_dbg(pd->dev, "op %d, data out 0x%02x\n", op, ret);
 return ret;
}
