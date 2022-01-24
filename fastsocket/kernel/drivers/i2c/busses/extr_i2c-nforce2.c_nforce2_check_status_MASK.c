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
struct nforce2_smbus {scalar_t__ can_abort; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; struct nforce2_smbus* algo_data; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int MAX_TIMEOUT ; 
 int /*<<< orphan*/  NVIDIA_SMB_STS ; 
 unsigned char NVIDIA_SMB_STS_DONE ; 
 unsigned char NVIDIA_SMB_STS_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*) ; 

__attribute__((used)) static int FUNC4(struct i2c_adapter *adap)
{
	struct nforce2_smbus *smbus = adap->algo_data;
	int timeout = 0;
	unsigned char temp;

	do {
		FUNC2(1);
		temp = FUNC1(NVIDIA_SMB_STS);
	} while ((!temp) && (timeout++ < MAX_TIMEOUT));

	if (timeout > MAX_TIMEOUT) {
		FUNC0(&adap->dev, "SMBus Timeout!\n");
		if (smbus->can_abort)
			FUNC3(adap);
		return -ETIMEDOUT;
	}
	if (!(temp & NVIDIA_SMB_STS_DONE) || (temp & NVIDIA_SMB_STS_STATUS)) {
		FUNC0(&adap->dev, "Transaction failed (0x%02x)!\n", temp);
		return -EIO;
	}
	return 0;
}