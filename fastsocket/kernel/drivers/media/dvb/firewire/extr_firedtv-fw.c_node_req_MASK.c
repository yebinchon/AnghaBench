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
typedef  int /*<<< orphan*/  u64 ;
struct fw_device {int generation; int /*<<< orphan*/  max_speed; int /*<<< orphan*/  node_id; int /*<<< orphan*/  card; } ;
struct firedtv {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int RCODE_COMPLETE ; 
 struct fw_device* FUNC0 (struct firedtv*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct firedtv *fdtv, u64 addr, void *data, size_t len,
		    int tcode)
{
	struct fw_device *device = FUNC0(fdtv);
	int rcode, generation = device->generation;

	FUNC2(); /* node_id vs. generation */

	rcode = FUNC1(device->card, tcode, device->node_id,
			generation, device->max_speed, addr, data, len);

	return rcode != RCODE_COMPLETE ? -EIO : 0;
}