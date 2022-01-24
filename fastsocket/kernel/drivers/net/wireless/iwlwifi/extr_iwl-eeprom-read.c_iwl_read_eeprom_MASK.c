#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct iwl_trans {int /*<<< orphan*/  dev; TYPE_2__* cfg; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {int eeprom_size; int /*<<< orphan*/  shadow_ram_support; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_EEPROM_GP ; 
 int CSR_EEPROM_GP_IF_OWNER_MSK ; 
 int /*<<< orphan*/  CSR_EEPROM_REG ; 
 int CSR_EEPROM_REG_MSK_ADDR ; 
 int /*<<< orphan*/  CSR_EEPROM_REG_READ_VALID_MSK ; 
 int /*<<< orphan*/  CSR_OTP_GP_REG ; 
 int CSR_OTP_GP_REG_ECC_CORR_STATUS_MSK ; 
 int CSR_OTP_GP_REG_ECC_UNCORR_STATUS_MSK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  IWL_EEPROM_ACCESS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*) ; 
 int FUNC5 (struct iwl_trans*,int) ; 
 int FUNC6 (struct iwl_trans*,int*) ; 
 int FUNC7 (struct iwl_trans*) ; 
 int FUNC8 (struct iwl_trans*) ; 
 int FUNC9 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct iwl_trans*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int,int /*<<< orphan*/ ) ; 

int FUNC16(struct iwl_trans *trans, u8 **eeprom, size_t *eeprom_size)
{
	__le16 *e;
	u32 gp = FUNC10(trans, CSR_EEPROM_GP);
	int sz;
	int ret;
	u16 addr;
	u16 validblockaddr = 0;
	u16 cache_addr = 0;
	int nvm_is_otp;

	if (!eeprom || !eeprom_size)
		return -EINVAL;

	nvm_is_otp = FUNC8(trans);
	if (nvm_is_otp < 0)
		return nvm_is_otp;

	sz = trans->cfg->base_params->eeprom_size;
	FUNC0(trans->dev, "NVM size = %d\n", sz);

	e = FUNC15(sz, GFP_KERNEL);
	if (!e)
		return -ENOMEM;

	ret = FUNC5(trans, nvm_is_otp);
	if (ret < 0) {
		FUNC1(trans, "EEPROM not found, EEPROM_GP=0x%08x\n", gp);
		goto err_free;
	}

	/* Make sure driver (instead of uCode) is allowed to read EEPROM */
	ret = FUNC3(trans);
	if (ret < 0) {
		FUNC1(trans, "Failed to acquire EEPROM semaphore.\n");
		goto err_free;
	}

	if (nvm_is_otp) {
		ret = FUNC7(trans);
		if (ret) {
			FUNC1(trans, "Failed to initialize OTP access.\n");
			goto err_unlock;
		}

		FUNC13(trans, CSR_EEPROM_GP,
			    FUNC10(trans, CSR_EEPROM_GP) &
			    ~CSR_EEPROM_GP_IF_OWNER_MSK);

		FUNC12(trans, CSR_OTP_GP_REG,
			    CSR_OTP_GP_REG_ECC_CORR_STATUS_MSK |
			    CSR_OTP_GP_REG_ECC_UNCORR_STATUS_MSK);
		/* traversing the linked list if no shadow ram supported */
		if (!trans->cfg->base_params->shadow_ram_support) {
			ret = FUNC6(trans, &validblockaddr);
			if (ret)
				goto err_unlock;
		}
		for (addr = validblockaddr; addr < validblockaddr + sz;
		     addr += sizeof(u16)) {
			__le16 eeprom_data;

			ret = FUNC11(trans, addr, &eeprom_data);
			if (ret)
				goto err_unlock;
			e[cache_addr / 2] = eeprom_data;
			cache_addr += sizeof(u16);
		}
	} else {
		/* eeprom is an array of 16bit values */
		for (addr = 0; addr < sz; addr += sizeof(u16)) {
			u32 r;

			FUNC13(trans, CSR_EEPROM_REG,
				    CSR_EEPROM_REG_MSK_ADDR & (addr << 1));

			ret = FUNC9(trans, CSR_EEPROM_REG,
					   CSR_EEPROM_REG_READ_VALID_MSK,
					   CSR_EEPROM_REG_READ_VALID_MSK,
					   IWL_EEPROM_ACCESS_TIMEOUT);
			if (ret < 0) {
				FUNC1(trans,
					"Time out reading EEPROM[%d]\n", addr);
				goto err_unlock;
			}
			r = FUNC10(trans, CSR_EEPROM_REG);
			e[addr / 2] = FUNC2(r >> 16);
		}
	}

	FUNC0(trans->dev, "NVM Type: %s\n",
			 nvm_is_otp ? "OTP" : "EEPROM");

	FUNC4(trans);

	*eeprom_size = sz;
	*eeprom = (u8 *)e;
	return 0;

 err_unlock:
	FUNC4(trans);
 err_free:
	FUNC14(e);

	return ret;
}