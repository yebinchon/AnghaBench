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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {struct list_head* next; } ;
struct rio_dev {scalar_t__ vid; scalar_t__ did; scalar_t__ asm_vid; scalar_t__ asm_did; TYPE_1__ global_list; } ;
struct list_head {struct list_head* next; } ;

/* Variables and functions */
 scalar_t__ RIO_ANY_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct rio_dev* FUNC2 (struct list_head*) ; 
 struct rio_dev* FUNC3 (struct rio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rio_dev*) ; 
 struct list_head rio_devices ; 
 int /*<<< orphan*/  rio_global_list_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct rio_dev *FUNC7(u16 vid, u16 did,
			    u16 asm_vid, u16 asm_did, struct rio_dev *from)
{
	struct list_head *n;
	struct rio_dev *rdev;

	FUNC0(FUNC1());
	FUNC5(&rio_global_list_lock);
	n = from ? from->global_list.next : rio_devices.next;

	while (n && (n != &rio_devices)) {
		rdev = FUNC2(n);
		if ((vid == RIO_ANY_ID || rdev->vid == vid) &&
		    (did == RIO_ANY_ID || rdev->did == did) &&
		    (asm_vid == RIO_ANY_ID || rdev->asm_vid == asm_vid) &&
		    (asm_did == RIO_ANY_ID || rdev->asm_did == asm_did))
			goto exit;
		n = n->next;
	}
	rdev = NULL;
      exit:
	FUNC4(from);
	rdev = FUNC3(rdev);
	FUNC6(&rio_global_list_lock);
	return rdev;
}