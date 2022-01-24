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
typedef  int u32 ;
typedef  int u16 ;
struct iwl_trans {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_EEPROM_REG ; 
 int CSR_EEPROM_REG_MSK_ADDR ; 
 int /*<<< orphan*/  CSR_EEPROM_REG_READ_VALID_MSK ; 
 int /*<<< orphan*/  CSR_OTP_GP_REG ; 
 int CSR_OTP_GP_REG_ECC_CORR_STATUS_MSK ; 
 int CSR_OTP_GP_REG_ECC_UNCORR_STATUS_MSK ; 
 int EINVAL ; 
 int /*<<< orphan*/  IWL_EEPROM_ACCESS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct iwl_trans *trans, u16 addr,
			     __le16 *eeprom_data)
{
	int ret = 0;
	u32 r;
	u32 otpgp;

	FUNC5(trans, CSR_EEPROM_REG,
		    CSR_EEPROM_REG_MSK_ADDR & (addr << 1));
	ret = FUNC2(trans, CSR_EEPROM_REG,
				 CSR_EEPROM_REG_READ_VALID_MSK,
				 CSR_EEPROM_REG_READ_VALID_MSK,
				 IWL_EEPROM_ACCESS_TIMEOUT);
	if (ret < 0) {
		FUNC0(trans, "Time out reading OTP[%d]\n", addr);
		return ret;
	}
	r = FUNC3(trans, CSR_EEPROM_REG);
	/* check for ECC errors: */
	otpgp = FUNC3(trans, CSR_OTP_GP_REG);
	if (otpgp & CSR_OTP_GP_REG_ECC_UNCORR_STATUS_MSK) {
		/* stop in this case */
		/* set the uncorrectable OTP ECC bit for acknowledgement */
		FUNC4(trans, CSR_OTP_GP_REG,
			    CSR_OTP_GP_REG_ECC_UNCORR_STATUS_MSK);
		FUNC0(trans, "Uncorrectable OTP ECC error, abort OTP read\n");
		return -EINVAL;
	}
	if (otpgp & CSR_OTP_GP_REG_ECC_CORR_STATUS_MSK) {
		/* continue in this case */
		/* set the correctable OTP ECC bit for acknowledgement */
		FUNC4(trans, CSR_OTP_GP_REG,
			    CSR_OTP_GP_REG_ECC_CORR_STATUS_MSK);
		FUNC0(trans, "Correctable OTP ECC error, continue read\n");
	}
	*eeprom_data = FUNC1(r >> 16);
	return 0;
}