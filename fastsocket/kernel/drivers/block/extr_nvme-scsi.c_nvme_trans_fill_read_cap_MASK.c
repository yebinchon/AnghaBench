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
typedef  int u32 ;
struct nvme_id_ns {int flbas; int dps; int /*<<< orphan*/  nsze; TYPE_1__* lbaf; } ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int ds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(u8 *response, struct nvme_id_ns *id_ns,
								u8 cdb16)
{
	u8 flbas;
	u32 lba_length;
	u64 rlba;
	u8 prot_en;
	u8 p_type_lut[4] = {0, 0, 1, 2};
	__be64 tmp_rlba;
	__be32 tmp_rlba_32;
	__be32 tmp_len;

	flbas = (id_ns->flbas) & 0x0F;
	lba_length = (1 << (id_ns->lbaf[flbas].ds));
	rlba = FUNC2(&id_ns->nsze) - 1;
	(id_ns->dps) ? (prot_en = 0x01) : (prot_en = 0);

	if (!cdb16) {
		if (rlba > 0xFFFFFFFF)
			rlba = 0xFFFFFFFF;
		tmp_rlba_32 = FUNC0(rlba);
		tmp_len = FUNC0(lba_length);
		FUNC3(response, &tmp_rlba_32, sizeof(u32));
		FUNC3(&response[4], &tmp_len, sizeof(u32));
	} else {
		tmp_rlba = FUNC1(rlba);
		tmp_len = FUNC0(lba_length);
		FUNC3(response, &tmp_rlba, sizeof(u64));
		FUNC3(&response[8], &tmp_len, sizeof(u32));
		response[12] = (p_type_lut[id_ns->dps & 0x3] << 1) | prot_en;
		/* P_I_Exponent = 0x0 | LBPPBE = 0x0 */
		/* LBPME = 0 | LBPRZ = 0 | LALBA = 0x00 */
		/* Bytes 16-31 - Reserved */
	}
}