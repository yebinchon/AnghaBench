#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
struct scsi_device {int /*<<< orphan*/  sdev_gendev; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct enclosure_device {TYPE_1__ edev; } ;
struct efd {int addr; int /*<<< orphan*/ * dev; } ;
typedef  enum scsi_protocol { ____Placeholder_scsi_protocol } scsi_protocol ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int INIT_ALLOC_SIZE ; 
 int SCSI_PROTOCOL_SAS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct efd*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct scsi_device*,int,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct enclosure_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ses_enclosure_find_by_addr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct enclosure_device *edev,
				   struct scsi_device *sdev)
{
	unsigned char *buf;
	unsigned char *desc;
	unsigned int vpd_len;
	struct efd efd = {
		.addr = 0,
	};

	buf = FUNC2(INIT_ALLOC_SIZE, GFP_KERNEL);
	if (!buf || FUNC3(sdev, 0x83, buf, INIT_ALLOC_SIZE))
		goto free;

	FUNC4(edev, FUNC5(edev->edev.parent), 0);

	vpd_len = ((buf[2] << 8) | buf[3]) + 4;
	FUNC1(buf);
	buf = FUNC2(vpd_len, GFP_KERNEL);
	if (!buf ||FUNC3(sdev, 0x83, buf, vpd_len))
		goto free;

	desc = buf + 4;
	while (desc < buf + vpd_len) {
		enum scsi_protocol proto = desc[0] >> 4;
		u8 code_set = desc[0] & 0x0f;
		u8 piv = desc[1] & 0x80;
		u8 assoc = (desc[1] & 0x30) >> 4;
		u8 type = desc[1] & 0x0f;
		u8 len = desc[3];

		if (piv && code_set == 1 && assoc == 1
		    && proto == SCSI_PROTOCOL_SAS && type == 3 && len == 8)
			efd.addr = (u64)desc[4] << 56 |
				(u64)desc[5] << 48 |
				(u64)desc[6] << 40 |
				(u64)desc[7] << 32 |
				(u64)desc[8] << 24 |
				(u64)desc[9] << 16 |
				(u64)desc[10] << 8 |
				(u64)desc[11];

		desc += len + 4;
	}
	if (!efd.addr)
		goto free;

	efd.dev = &sdev->sdev_gendev;

	FUNC0(ses_enclosure_find_by_addr, &efd);
 free:
	FUNC1(buf);
}