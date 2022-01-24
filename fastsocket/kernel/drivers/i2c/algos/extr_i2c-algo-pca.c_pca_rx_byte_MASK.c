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
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  I2C_PCA_DAT ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_algo_pca_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct i2c_algo_pca_data *adap,
			__u8 *b, int ack)
{
	*b = FUNC1(adap, I2C_PCA_DAT);
	FUNC0("=== READ %#04x %s\n", *b, ack ? "ACK" : "NACK");
}