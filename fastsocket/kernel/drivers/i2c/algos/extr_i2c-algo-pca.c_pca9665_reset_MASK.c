#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct i2c_algo_pca_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_PCA_IND ; 
 int /*<<< orphan*/  I2C_PCA_INDPTR ; 
 int I2C_PCA_IPRESET ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_algo_pca_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(void *pd)
{
	struct i2c_algo_pca_data *adap = pd;
	FUNC0(adap, I2C_PCA_INDPTR, I2C_PCA_IPRESET);
	FUNC0(adap, I2C_PCA_IND, 0xA5);
	FUNC0(adap, I2C_PCA_IND, 0x5A);
}