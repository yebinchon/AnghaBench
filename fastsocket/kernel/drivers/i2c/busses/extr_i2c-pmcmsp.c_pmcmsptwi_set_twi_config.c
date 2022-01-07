
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcmsptwi_data {int lock; scalar_t__ iobase; } ;
struct pmcmsptwi_cfg {int dummy; } ;


 scalar_t__ MSP_TWI_CFG_REG_OFFSET ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pmcmsptwi_cfg_to_reg (struct pmcmsptwi_cfg const*) ;
 int pmcmsptwi_writel (int ,scalar_t__) ;

__attribute__((used)) static void pmcmsptwi_set_twi_config(const struct pmcmsptwi_cfg *cfg,
     struct pmcmsptwi_data *data)
{
 mutex_lock(&data->lock);
 pmcmsptwi_writel(pmcmsptwi_cfg_to_reg(cfg),
    data->iobase + MSP_TWI_CFG_REG_OFFSET);
 mutex_unlock(&data->lock);
}
