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
struct i2c_adapter {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  bad_edid_counter; TYPE_1__* dev; int /*<<< orphan*/  null_edid_counter; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DRM_UT_KMS ; 
 int EDID_LENGTH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int drm_debug ; 
 scalar_t__ FUNC1 (struct i2c_adapter*,int*,int,int) ; 
 scalar_t__ FUNC2 (int*,int,int) ; 
 scalar_t__ FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int* FUNC7 (int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 *
FUNC8(struct drm_connector *connector, struct i2c_adapter *adapter)
{
	int i, j = 0, valid_extensions = 0;
	u8 *block, *new;
	bool print_bad_edid = !connector->bad_edid_counter || (drm_debug & DRM_UT_KMS);

	if ((block = FUNC6(EDID_LENGTH, GFP_KERNEL)) == NULL)
		return NULL;

	/* base block fetch */
	for (i = 0; i < 4; i++) {
		if (FUNC1(adapter, block, 0, EDID_LENGTH))
			goto out;
		if (FUNC2(block, 0, print_bad_edid))
			break;
		if (i == 0 && FUNC3(block, EDID_LENGTH)) {
			connector->null_edid_counter++;
			goto carp;
		}
	}
	if (i == 4)
		goto carp;

	/* if there's no extensions, we're done */
	if (block[0x7e] == 0)
		return block;

	new = FUNC7(block, (block[0x7e] + 1) * EDID_LENGTH, GFP_KERNEL);
	if (!new)
		goto out;
	block = new;

	for (j = 1; j <= block[0x7e]; j++) {
		for (i = 0; i < 4; i++) {
			if (FUNC1(adapter,
				  block + (valid_extensions + 1) * EDID_LENGTH,
				  j, EDID_LENGTH))
				goto out;
			if (FUNC2(block + (valid_extensions + 1) * EDID_LENGTH, j, print_bad_edid)) {
				valid_extensions++;
				break;
			}
		}

		if (i == 4 && print_bad_edid) {
			FUNC0(connector->dev->dev,
			 "%s: Ignoring invalid EDID block %d.\n",
			 FUNC4(connector), j);

			connector->bad_edid_counter++;
		}
	}

	if (valid_extensions != block[0x7e]) {
		block[EDID_LENGTH-1] += block[0x7e] - valid_extensions;
		block[0x7e] = valid_extensions;
		new = FUNC7(block, (valid_extensions + 1) * EDID_LENGTH, GFP_KERNEL);
		if (!new)
			goto out;
		block = new;
	}

	return block;

carp:
	if (print_bad_edid) {
		FUNC0(connector->dev->dev, "%s: EDID block %d invalid.\n",
			 FUNC4(connector), j);
	}
	connector->bad_edid_counter++;

out:
	FUNC5(block);
	return NULL;
}