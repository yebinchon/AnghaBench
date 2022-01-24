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
typedef  scalar_t__ u64 ;
struct TYPE_4__ {int attr; } ;
struct TYPE_3__ {int len; int /*<<< orphan*/  lock; scalar_t__* entries; } ;

/* Variables and functions */
 scalar_t__ APEI_ERST_INVALID_RECORD_ID ; 
 int ENODEV ; 
 int ERST_RANGE_NVRAM ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ erst_disable ; 
 TYPE_2__ erst_erange ; 
 int /*<<< orphan*/  erst_lock ; 
 TYPE_1__ erst_record_id_cache ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(u64 record_id)
{
	int rc, i;
	unsigned long flags;
	u64 *entries;

	if (erst_disable)
		return -ENODEV;

	rc = FUNC3(&erst_record_id_cache.lock);
	if (rc)
		return rc;
	FUNC5(&erst_lock, flags);
	if (erst_erange.attr & ERST_RANGE_NVRAM)
		rc = FUNC0(record_id);
	else
		rc = FUNC1(record_id);
	FUNC6(&erst_lock, flags);
	if (rc)
		goto out;
	entries = erst_record_id_cache.entries;
	for (i = 0; i < erst_record_id_cache.len; i++) {
		if (entries[i] == record_id)
			entries[i] = APEI_ERST_INVALID_RECORD_ID;
	}
	FUNC2();
out:
	FUNC4(&erst_record_id_cache.lock);
	return rc;
}