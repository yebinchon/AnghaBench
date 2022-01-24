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
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct nes_root_vpbl {TYPE_1__* pbl_vbase; scalar_t__ pbl_pbase; } ;
struct nes_device {int /*<<< orphan*/  pcidev; } ;
struct TYPE_2__ {void* pa_high; void* pa_low; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int FUNC1 (void*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int,scalar_t__*) ; 

__attribute__((used)) static u32 FUNC3(struct nes_device *nesdev,
		    struct nes_root_vpbl *root_vpbl,
		    struct nes_root_vpbl *new_root,
		    u16 pbl_count_4k)
{
	u64 leaf_pbl;
	int i, j, k;

	if (pbl_count_4k == 1) {
		new_root->pbl_vbase = FUNC2(nesdev->pcidev,
						512, &new_root->pbl_pbase);

		if (new_root->pbl_vbase == NULL)
			return 0;

		leaf_pbl = (u64)root_vpbl->pbl_pbase;
		for (i = 0; i < 16; i++) {
			new_root->pbl_vbase[i].pa_low =
				FUNC0((u32)leaf_pbl);
			new_root->pbl_vbase[i].pa_high =
				FUNC0((u32)((((u64)leaf_pbl) >> 32)));
			leaf_pbl += 256;
		}
	} else {
		for (i = 3; i >= 0; i--) {
			j = i * 16;
			root_vpbl->pbl_vbase[j] = root_vpbl->pbl_vbase[i];
			leaf_pbl = FUNC1(root_vpbl->pbl_vbase[j].pa_low) +
			    (((u64)FUNC1(root_vpbl->pbl_vbase[j].pa_high))
				<< 32);
			for (k = 1; k < 16; k++) {
				leaf_pbl += 256;
				root_vpbl->pbl_vbase[j + k].pa_low =
						FUNC0((u32)leaf_pbl);
				root_vpbl->pbl_vbase[j + k].pa_high =
				    FUNC0((u32)((((u64)leaf_pbl) >> 32)));
			}
		}
	}

	return 1;
}