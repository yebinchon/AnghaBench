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
typedef  scalar_t__ u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int board_type; int cut_through; scalar_t__ port_type; int /*<<< orphan*/  revision_id; } ;
struct TYPE_3__ {int /*<<< orphan*/ * md_template; } ;
struct netxen_adapter {int driver_mismatch; scalar_t__ fw_version; scalar_t__ portnum; int msix_supported; int rss_supported; int max_rds_rings; scalar_t__ num_lro_rxd; TYPE_2__ ahw; int /*<<< orphan*/  num_txd; int /*<<< orphan*/  num_jumbo_rxd; int /*<<< orphan*/  num_rxd; void* capabilities; struct pci_dev* pdev; TYPE_1__ mdump; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  CRB_FW_CAPABILITIES_1 ; 
 int /*<<< orphan*/  DEFAULT_RCV_DESCRIPTORS_10G ; 
 int /*<<< orphan*/  DEFAULT_RCV_DESCRIPTORS_1G ; 
 int /*<<< orphan*/  MAX_CMD_DESCRIPTORS ; 
 int /*<<< orphan*/  MAX_JUMBO_RCV_DESCRIPTORS_10G ; 
 int /*<<< orphan*/  MAX_JUMBO_RCV_DESCRIPTORS_1G ; 
 scalar_t__ MAX_LRO_RCV_DESCRIPTORS ; 
#define  NETXEN_BRDTYPE_P2_SB31_10G 129 
#define  NETXEN_BRDTYPE_P2_SB31_10G_CX4 128 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NETXEN_FW_VERSION_MAJOR ; 
 int /*<<< orphan*/  NETXEN_FW_VERSION_MINOR ; 
 int /*<<< orphan*/  NETXEN_FW_VERSION_SUB ; 
 int NETXEN_MAX_SHORT_NAME ; 
 scalar_t__ NETXEN_NIC_GBE ; 
 scalar_t__ NETXEN_NIC_XGBE ; 
 int /*<<< orphan*/  NETXEN_SRE_MISC ; 
 scalar_t__ FUNC1 (int,int,int) ; 
 void* FUNC2 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 int NX_FW_SERIAL_NUM_OFFSET ; 
 int NX_FW_VERSION_OFFSET ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct netxen_adapter*,int,int*) ; 
 int FUNC13 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  use_msi_x ; 

__attribute__((used)) static void
FUNC15(struct netxen_adapter *adapter)
{
	u32 fw_major, fw_minor, fw_build, prev_fw_version;
	char brd_name[NETXEN_MAX_SHORT_NAME];
	char serial_num[32];
	int i, offset, val, err;
	__le32 *ptr32;
	struct pci_dev *pdev = adapter->pdev;

	adapter->driver_mismatch = 0;

	ptr32 = (__le32 *)&serial_num;
	offset = NX_FW_SERIAL_NUM_OFFSET;
	for (i = 0; i < 8; i++) {
		if (FUNC12(adapter, offset, &val) == -1) {
			FUNC6(&pdev->dev, "error reading board info\n");
			adapter->driver_mismatch = 1;
			return;
		}
		ptr32[i] = FUNC5(val);
		offset += sizeof(u32);
	}

	fw_major = FUNC2(adapter, NETXEN_FW_VERSION_MAJOR);
	fw_minor = FUNC2(adapter, NETXEN_FW_VERSION_MINOR);
	fw_build = FUNC2(adapter, NETXEN_FW_VERSION_SUB);
	prev_fw_version = adapter->fw_version;
	adapter->fw_version = FUNC1(fw_major, fw_minor, fw_build);

	/* Get FW Mini Coredump template and store it */
	 if (FUNC4(adapter->ahw.revision_id)) {
		if (adapter->mdump.md_template == NULL ||
				adapter->fw_version > prev_fw_version) {
			FUNC10(adapter->mdump.md_template);
			adapter->mdump.md_template = NULL;
			err = FUNC13(adapter);
			if (err)
				FUNC6(&adapter->pdev->dev,
				"Failed to setup minidump rcode = %d\n", err);
		}
	}

	if (adapter->portnum == 0) {
		FUNC9(adapter->ahw.board_type, brd_name);

		FUNC14("%s: %s Board S/N %s  Chip rev 0x%x\n",
				FUNC11(THIS_MODULE),
				brd_name, serial_num, adapter->ahw.revision_id);
	}

	if (adapter->fw_version < FUNC1(3, 4, 216)) {
		adapter->driver_mismatch = 1;
		FUNC8(&pdev->dev, "firmware version %d.%d.%d unsupported\n",
				fw_major, fw_minor, fw_build);
		return;
	}

	if (FUNC4(adapter->ahw.revision_id)) {
		i = FUNC2(adapter, NETXEN_SRE_MISC);
		adapter->ahw.cut_through = (i & 0x8000) ? 1 : 0;
	}

	FUNC7(&pdev->dev, "firmware v%d.%d.%d [%s]\n",
			fw_major, fw_minor, fw_build,
			adapter->ahw.cut_through ? "cut-through" : "legacy");

	if (adapter->fw_version >= FUNC1(4, 0, 222))
		adapter->capabilities = FUNC2(adapter, CRB_FW_CAPABILITIES_1);

	if (adapter->ahw.port_type == NETXEN_NIC_XGBE) {
		adapter->num_rxd = DEFAULT_RCV_DESCRIPTORS_10G;
		adapter->num_jumbo_rxd = MAX_JUMBO_RCV_DESCRIPTORS_10G;
	} else if (adapter->ahw.port_type == NETXEN_NIC_GBE) {
		adapter->num_rxd = DEFAULT_RCV_DESCRIPTORS_1G;
		adapter->num_jumbo_rxd = MAX_JUMBO_RCV_DESCRIPTORS_1G;
	}

	adapter->msix_supported = 0;
	if (FUNC4(adapter->ahw.revision_id)) {
		adapter->msix_supported = !!use_msi_x;
		adapter->rss_supported = !!use_msi_x;
	} else {
		u32 flashed_ver = 0;
		FUNC12(adapter,
				NX_FW_VERSION_OFFSET, (int *)&flashed_ver);
		flashed_ver = FUNC0(flashed_ver);

		if (flashed_ver >= FUNC1(3, 4, 336)) {
			switch (adapter->ahw.board_type) {
			case NETXEN_BRDTYPE_P2_SB31_10G:
			case NETXEN_BRDTYPE_P2_SB31_10G_CX4:
				adapter->msix_supported = !!use_msi_x;
				adapter->rss_supported = !!use_msi_x;
				break;
			default:
				break;
			}
		}
	}

	adapter->num_txd = MAX_CMD_DESCRIPTORS;

	if (FUNC3(adapter->ahw.revision_id)) {
		adapter->num_lro_rxd = MAX_LRO_RCV_DESCRIPTORS;
		adapter->max_rds_rings = 3;
	} else {
		adapter->num_lro_rxd = 0;
		adapter->max_rds_rings = 2;
	}
}