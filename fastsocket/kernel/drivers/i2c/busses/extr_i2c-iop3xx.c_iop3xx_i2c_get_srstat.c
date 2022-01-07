
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct i2c_algo_iop3xx_data {int lock; scalar_t__ SR_received; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline u32
iop3xx_i2c_get_srstat(struct i2c_algo_iop3xx_data *iop3xx_adap)
{
 unsigned long flags;
 u32 sr;

 spin_lock_irqsave(&iop3xx_adap->lock, flags);
 sr = iop3xx_adap->SR_received;
 iop3xx_adap->SR_received = 0;
 spin_unlock_irqrestore(&iop3xx_adap->lock, flags);

 return sr;
}
