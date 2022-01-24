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
typedef  int /*<<< orphan*/  uuid_le ;
struct hv_vmbus_device_id {int /*<<< orphan*/  guid; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static const struct hv_vmbus_device_id *FUNC2(
					const struct hv_vmbus_device_id *id,
					__u8 *guid)
{
	for (; !FUNC0(id->guid); id++)
		if (!FUNC1(&id->guid, guid, sizeof(uuid_le)))
			return id;

	return NULL;
}