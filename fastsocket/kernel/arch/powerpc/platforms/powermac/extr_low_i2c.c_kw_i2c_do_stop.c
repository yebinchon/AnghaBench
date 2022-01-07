
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmac_i2c_host_kw {int result; int state; } ;


 int KW_I2C_CTL_STOP ;
 int kw_write_reg (int ,int ) ;
 int reg_control ;
 int state_stop ;

__attribute__((used)) static void kw_i2c_do_stop(struct pmac_i2c_host_kw *host, int result)
{
 kw_write_reg(reg_control, KW_I2C_CTL_STOP);
 host->state = state_stop;
 host->result = result;
}
