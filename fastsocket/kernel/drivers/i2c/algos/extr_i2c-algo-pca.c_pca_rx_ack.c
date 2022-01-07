
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_pca_data {int dummy; } ;


 int I2C_PCA_CON_AA ;
 int I2C_PCA_CON_SI ;
 int I2C_PCA_CON_STA ;
 int I2C_PCA_CON_STO ;
 int pca_get_con (struct i2c_algo_pca_data*) ;
 int pca_set_con (struct i2c_algo_pca_data*,int) ;
 int pca_wait (struct i2c_algo_pca_data*) ;

__attribute__((used)) static int pca_rx_ack(struct i2c_algo_pca_data *adap,
         int ack)
{
 int sta = pca_get_con(adap);

 sta &= ~(I2C_PCA_CON_STO|I2C_PCA_CON_STA|I2C_PCA_CON_SI|I2C_PCA_CON_AA);

 if ( ack )
  sta |= I2C_PCA_CON_AA;

 pca_set_con(adap, sta);
 return pca_wait(adap);
}
