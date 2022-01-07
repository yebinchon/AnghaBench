
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcmsptwi_data {int lock; scalar_t__ iobase; } ;
struct pmcmsptwi_clockcfg {int highspeed; int standard; } ;


 scalar_t__ MSP_TWI_HS_CLK_REG_OFFSET ;
 scalar_t__ MSP_TWI_SF_CLK_REG_OFFSET ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pmcmsptwi_clock_to_reg (int *) ;
 int pmcmsptwi_writel (int ,scalar_t__) ;

__attribute__((used)) static void pmcmsptwi_set_clock_config(const struct pmcmsptwi_clockcfg *cfg,
     struct pmcmsptwi_data *data)
{
 mutex_lock(&data->lock);
 pmcmsptwi_writel(pmcmsptwi_clock_to_reg(&cfg->standard),
    data->iobase + MSP_TWI_SF_CLK_REG_OFFSET);
 pmcmsptwi_writel(pmcmsptwi_clock_to_reg(&cfg->highspeed),
    data->iobase + MSP_TWI_HS_CLK_REG_OFFSET);
 mutex_unlock(&data->lock);
}
