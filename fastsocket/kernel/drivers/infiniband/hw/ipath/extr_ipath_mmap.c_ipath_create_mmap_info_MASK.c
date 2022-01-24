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
typedef  scalar_t__ u32 ;
struct ipath_mmap_info {scalar_t__ offset; scalar_t__ size; int /*<<< orphan*/  ref; void* obj; struct ib_ucontext* context; int /*<<< orphan*/  pending_mmaps; } ;
struct ipath_ibdev {scalar_t__ mmap_offset; int /*<<< orphan*/  mmap_offset_lock; } ;
struct ib_ucontext {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ PAGE_SIZE ; 
 struct ipath_mmap_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct ipath_mmap_info *FUNC6(struct ipath_ibdev *dev,
					       u32 size,
					       struct ib_ucontext *context,
					       void *obj) {
	struct ipath_mmap_info *ip;

	ip = FUNC2(sizeof *ip, GFP_KERNEL);
	if (!ip)
		goto bail;

	size = FUNC1(size);

	FUNC4(&dev->mmap_offset_lock);
	if (dev->mmap_offset == 0)
		dev->mmap_offset = PAGE_SIZE;
	ip->offset = dev->mmap_offset;
	dev->mmap_offset += size;
	FUNC5(&dev->mmap_offset_lock);

	FUNC0(&ip->pending_mmaps);
	ip->size = size;
	ip->context = context;
	ip->obj = obj;
	FUNC3(&ip->ref);

bail:
	return ip;
}