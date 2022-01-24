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
typedef  int /*<<< orphan*/  uint64_t ;
struct dm_thin_device {int dummy; } ;
struct dm_pool_metadata {int /*<<< orphan*/  details_root; int /*<<< orphan*/  details_info; int /*<<< orphan*/  root; int /*<<< orphan*/  tl_info; int /*<<< orphan*/  time; int /*<<< orphan*/  tm; } ;
struct disk_device_details {int dummy; } ;
typedef  int /*<<< orphan*/  dm_thin_id ;
typedef  int /*<<< orphan*/  dm_block_t ;
typedef  struct disk_device_details __le64 ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (struct dm_thin_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct disk_device_details*) ; 
 int FUNC2 (struct dm_pool_metadata*,int /*<<< orphan*/ ,int,struct dm_thin_device**) ; 
 int FUNC3 (struct dm_pool_metadata*,struct dm_thin_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct disk_device_details FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct disk_device_details*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct disk_device_details*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct disk_device_details) ; 

__attribute__((used)) static int FUNC11(struct dm_pool_metadata *pmd,
			 dm_thin_id dev, dm_thin_id origin)
{
	int r;
	dm_block_t origin_root;
	uint64_t key = origin, dev_key = dev;
	struct dm_thin_device *td;
	struct disk_device_details details_le;
	__le64 value;

	/* check this device is unused */
	r = FUNC6(&pmd->details_info, pmd->details_root,
			    &dev_key, &details_le);
	if (!r)
		return -EEXIST;

	/* find the mapping tree for the origin */
	r = FUNC6(&pmd->tl_info, pmd->root, &key, &value);
	if (r)
		return r;
	origin_root = FUNC10(value);

	/* clone the origin, an inc will do */
	FUNC9(pmd->tm, origin_root);

	/* insert into the main mapping tree */
	value = FUNC4(origin_root);
	FUNC1(&value);
	key = dev;
	r = FUNC5(&pmd->tl_info, pmd->root, &key, &value, &pmd->root);
	if (r) {
		FUNC8(pmd->tm, origin_root);
		return r;
	}

	pmd->time++;

	r = FUNC2(pmd, dev, 1, &td);
	if (r)
		goto bad;

	r = FUNC3(pmd, td, origin, pmd->time);
	FUNC0(td);

	if (r)
		goto bad;

	return 0;

bad:
	FUNC7(&pmd->tl_info, pmd->root, &key, &pmd->root);
	FUNC7(&pmd->details_info, pmd->details_root,
			&key, &pmd->details_root);
	return r;
}