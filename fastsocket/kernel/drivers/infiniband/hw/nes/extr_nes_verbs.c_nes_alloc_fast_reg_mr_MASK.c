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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct nes_vnic {struct nes_device* nesdev; } ;
struct nes_pd {int dummy; } ;
struct ib_mr {int rkey; int lkey; } ;
struct nes_mr {struct ib_mr ibmr; int /*<<< orphan*/  mode; } ;
struct nes_device {struct nes_adapter* nesadapter; } ;
struct nes_adapter {int max_mr; int /*<<< orphan*/  allocated_mrs; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  next_stag_index ;

/* Variables and functions */
 int E2BIG ; 
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IWNES_MEMREG_TYPE_FMEM ; 
 int NES_4K_PBL_CHUNK_SIZE ; 
 int /*<<< orphan*/  NES_DBG_MR ; 
 int /*<<< orphan*/  NES_RESOURCE_FAST_MR ; 
 int FUNC1 (struct nes_device*,struct nes_pd*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nes_mr*) ; 
 struct nes_mr* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nes_adapter*,int /*<<< orphan*/ ,int,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nes_adapter*,int /*<<< orphan*/ ,int) ; 
 struct nes_pd* FUNC8 (struct ib_pd*) ; 
 struct nes_vnic* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ib_mr *FUNC10(struct ib_pd *ibpd, int max_page_list_len)
{
	struct nes_pd *nespd = FUNC8(ibpd);
	struct nes_vnic *nesvnic = FUNC9(ibpd->device);
	struct nes_device *nesdev = nesvnic->nesdev;
	struct nes_adapter *nesadapter = nesdev->nesadapter;

	u32 next_stag_index;
	u8 stag_key = 0;
	u32 driver_key = 0;
	int err = 0;
	u32 stag_index = 0;
	struct nes_mr *nesmr;
	u32 stag;
	int ret;
	struct ib_mr *ibmr;
/*
 * Note:  Set to always use a fixed length single page entry PBL.  This is to allow
 *	 for the fast_reg_mr operation to always know the size of the PBL.
 */
	if (max_page_list_len > (NES_4K_PBL_CHUNK_SIZE / sizeof(u64)))
		return FUNC0(-E2BIG);

	FUNC2(&next_stag_index, sizeof(next_stag_index));
	stag_key = (u8)next_stag_index;
	next_stag_index >>= 8;
	next_stag_index %= nesadapter->max_mr;

	err = FUNC5(nesadapter, nesadapter->allocated_mrs,
				 nesadapter->max_mr, &stag_index,
				 &next_stag_index, NES_RESOURCE_FAST_MR);
	if (err)
		return FUNC0(err);

	nesmr = FUNC4(sizeof(*nesmr), GFP_KERNEL);
	if (!nesmr) {
		FUNC7(nesadapter, nesadapter->allocated_mrs, stag_index);
		return FUNC0(-ENOMEM);
	}

	stag = stag_index << 8;
	stag |= driver_key;
	stag += (u32)stag_key;

	FUNC6(NES_DBG_MR, "Allocating STag 0x%08X index = 0x%08X\n",
		  stag, stag_index);

	ret = FUNC1(nesdev, nespd, stag, max_page_list_len);

	if (ret == 0) {
		nesmr->ibmr.rkey = stag;
		nesmr->ibmr.lkey = stag;
		nesmr->mode = IWNES_MEMREG_TYPE_FMEM;
		ibmr = &nesmr->ibmr;
	} else {
		FUNC3(nesmr);
		FUNC7(nesadapter, nesadapter->allocated_mrs, stag_index);
		ibmr = FUNC0(-ENOMEM);
	}
	return ibmr;
}