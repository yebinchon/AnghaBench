
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_pnx_algo_data {int dummy; } ;
struct i2c_adapter {int name; int dev; struct i2c_pnx_algo_data* algo_data; } ;


 int I2C_PNX_TIMEOUT ;
 int I2C_REG_CTL (struct i2c_pnx_algo_data*) ;
 int I2C_REG_STS (struct i2c_pnx_algo_data*) ;
 int dev_err (int *,char*,int ) ;
 int ioread32 (int ) ;
 int iowrite32 (int,int ) ;
 int mcntrl_reset ;
 int mstatus_active ;
 int mstatus_nai ;
 int mstatus_rfe ;
 int mstatus_tfe ;
 int wait_reset (int ,struct i2c_pnx_algo_data*) ;

__attribute__((used)) static inline void bus_reset_if_active(struct i2c_adapter *adap)
{
 struct i2c_pnx_algo_data *alg_data = adap->algo_data;
 u32 stat;

 if ((stat = ioread32(I2C_REG_STS(alg_data))) & mstatus_active) {
  dev_err(&adap->dev,
   "%s: Bus is still active after xfer. Reset it...\n",
         adap->name);
  iowrite32(ioread32(I2C_REG_CTL(alg_data)) | mcntrl_reset,
     I2C_REG_CTL(alg_data));
  wait_reset(I2C_PNX_TIMEOUT, alg_data);
 } else if (!(stat & mstatus_rfe) || !(stat & mstatus_tfe)) {



  iowrite32(ioread32(I2C_REG_CTL(alg_data)) | mcntrl_reset,
     I2C_REG_CTL(alg_data));
  wait_reset(I2C_PNX_TIMEOUT, alg_data);
 } else if (stat & mstatus_nai) {
  iowrite32(ioread32(I2C_REG_CTL(alg_data)) | mcntrl_reset,
     I2C_REG_CTL(alg_data));
  wait_reset(I2C_PNX_TIMEOUT, alg_data);
 }
}
