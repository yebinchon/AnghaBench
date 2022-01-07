
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_pca_data {int dummy; } ;


 int I2C_PCA_IND ;
 int I2C_PCA_INDPTR ;
 int I2C_PCA_IPRESET ;
 int pca_outw (struct i2c_algo_pca_data*,int ,int) ;

__attribute__((used)) static void pca9665_reset(void *pd)
{
 struct i2c_algo_pca_data *adap = pd;
 pca_outw(adap, I2C_PCA_INDPTR, I2C_PCA_IPRESET);
 pca_outw(adap, I2C_PCA_IND, 0xA5);
 pca_outw(adap, I2C_PCA_IND, 0x5A);
}
