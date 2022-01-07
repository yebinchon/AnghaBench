
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_pca_data {int dummy; } ;
typedef int __u8 ;


 int DEB2 (char*,int ) ;
 int I2C_PCA_CON_SI ;
 int I2C_PCA_CON_STA ;
 int I2C_PCA_CON_STO ;
 int I2C_PCA_DAT ;
 int pca_get_con (struct i2c_algo_pca_data*) ;
 int pca_outw (struct i2c_algo_pca_data*,int ,int ) ;
 int pca_set_con (struct i2c_algo_pca_data*,int) ;
 int pca_wait (struct i2c_algo_pca_data*) ;

__attribute__((used)) static int pca_tx_byte(struct i2c_algo_pca_data *adap,
   __u8 b)
{
 int sta = pca_get_con(adap);
 DEB2("=== WRITE %#04x\n", b);
 pca_outw(adap, I2C_PCA_DAT, b);

 sta &= ~(I2C_PCA_CON_STO|I2C_PCA_CON_STA|I2C_PCA_CON_SI);
 pca_set_con(adap, sta);

 return pca_wait(adap);
}
