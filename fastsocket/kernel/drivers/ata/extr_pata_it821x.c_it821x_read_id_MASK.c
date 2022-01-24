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
typedef  int u16 ;
struct ata_taskfile {int dummy; } ;
struct ata_device {int dummy; } ;
typedef  int /*<<< orphan*/  model_num ;

/* Variables and functions */
 size_t ATA_ID_MAJOR_VER ; 
 int /*<<< orphan*/  ATA_ID_PROD ; 
 int /*<<< orphan*/  ATA_ID_PROD_LEN ; 
 size_t ATA_ID_SERNO ; 
 int /*<<< orphan*/  ATA_ID_SERNO_LEN ; 
 unsigned int FUNC0 (struct ata_device*,struct ata_taskfile*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned char*,char*) ; 

__attribute__((used)) static unsigned int FUNC4(struct ata_device *adev,
					struct ata_taskfile *tf, u16 *id)
{
	unsigned int err_mask;
	unsigned char model_num[ATA_ID_PROD_LEN + 1];

	err_mask = FUNC0(adev, tf, id);
	if (err_mask)
		return err_mask;
	FUNC1(id, model_num, ATA_ID_PROD, sizeof(model_num));

	id[83] &= ~(1 << 12);	/* Cache flush is firmware handled */
	id[83] &= ~(1 << 13);	/* Ditto for LBA48 flushes */
	id[84] &= ~(1 << 6);	/* No FUA */
	id[85] &= ~(1 << 10);	/* No HPA */
	id[76] = 0;		/* No NCQ/AN etc */

	if (FUNC3(model_num, "Integrated Technology Express")) {
		/* Set feature bits the firmware neglects */
		id[49] |= 0x0300;	/* LBA, DMA */
		id[83] &= 0x7FFF;
		id[83] |= 0x4400;	/* Word 83 is valid and LBA48 */
		id[86] |= 0x0400;	/* LBA48 on */
		id[ATA_ID_MAJOR_VER] |= 0x1F;
		/* Clear the serial number because it's different each boot
		   which breaks validation on resume */
		FUNC2(&id[ATA_ID_SERNO], 0x20, ATA_ID_SERNO_LEN);
	}
	return err_mask;
}