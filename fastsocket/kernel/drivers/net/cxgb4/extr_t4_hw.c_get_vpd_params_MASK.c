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
typedef  int /*<<< orphan*/  vpd ;
typedef  scalar_t__ u8 ;
struct vpd_params {int /*<<< orphan*/  sn; int /*<<< orphan*/  ec; int /*<<< orphan*/  id; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 unsigned int EC_LEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned int ID_LEN ; 
 int PCI_VPD_INFO_FLD_HDR_SIZE ; 
 scalar_t__ PCI_VPD_LRDT_ID_STRING ; 
 int /*<<< orphan*/  PCI_VPD_LRDT_RO_DATA ; 
 int PCI_VPD_LRDT_TAG_SIZE ; 
 int /*<<< orphan*/  SERNUM_LEN ; 
 int /*<<< orphan*/  VPD_BASE ; 
 int VPD_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*,unsigned int) ; 
 unsigned int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int FUNC5 (scalar_t__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__*) ; 
 unsigned int FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct adapter *adapter, struct vpd_params *p)
{
	int i, ret;
	int ec, sn;
	u8 vpd[VPD_LEN], csum;
	unsigned int vpdr_len, kw_offset, id_len;

	ret = FUNC4(adapter->pdev, VPD_BASE, sizeof(vpd), vpd);
	if (ret < 0)
		return ret;

	if (vpd[0] != PCI_VPD_LRDT_ID_STRING) {
		FUNC1(adapter->pdev_dev, "missing VPD ID string\n");
		return -EINVAL;
	}

	id_len = FUNC7(vpd);
	if (id_len > ID_LEN)
		id_len = ID_LEN;

	i = FUNC5(vpd, 0, VPD_LEN, PCI_VPD_LRDT_RO_DATA);
	if (i < 0) {
		FUNC1(adapter->pdev_dev, "missing VPD-R section\n");
		return -EINVAL;
	}

	vpdr_len = FUNC7(&vpd[i]);
	kw_offset = i + PCI_VPD_LRDT_TAG_SIZE;
	if (vpdr_len + kw_offset > VPD_LEN) {
		FUNC1(adapter->pdev_dev, "bad VPD-R length %u\n", vpdr_len);
		return -EINVAL;
	}

#define FIND_VPD_KW(var, name) do { \
	var = pci_vpd_find_info_keyword(vpd, kw_offset, vpdr_len, name); \
	if (var < 0) { \
		dev_err(adapter->pdev_dev, "missing VPD keyword " name "\n"); \
		return -EINVAL; \
	} \
	var += PCI_VPD_INFO_FLD_HDR_SIZE; \
} while (0)

	FIND_VPD_KW(i, "RV");
	for (csum = 0; i >= 0; i--)
		csum += vpd[i];

	if (csum) {
		FUNC1(adapter->pdev_dev,
			"corrupted VPD EEPROM, actual csum %u\n", csum);
		return -EINVAL;
	}

	FIND_VPD_KW(ec, "EC");
	FIND_VPD_KW(sn, "SN");
#undef FIND_VPD_KW

	FUNC2(p->id, vpd + PCI_VPD_LRDT_TAG_SIZE, id_len);
	FUNC8(p->id);
	FUNC2(p->ec, vpd + ec, EC_LEN);
	FUNC8(p->ec);
	i = FUNC6(vpd + sn - PCI_VPD_INFO_FLD_HDR_SIZE);
	FUNC2(p->sn, vpd + sn, FUNC3(i, SERNUM_LEN));
	FUNC8(p->sn);
	return 0;
}