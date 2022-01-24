#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_7__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {TYPE_4__ dst; TYPE_2__ src; int /*<<< orphan*/  nbytes; int /*<<< orphan*/ * page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blkcipher_walk*) ; 
 int /*<<< orphan*/  FUNC1 (struct blkcipher_walk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct blkcipher_walk *walk)
{
	u8 *tmp = walk->page;

	FUNC0(walk);
	FUNC2(tmp, walk->src.virt.addr, walk->nbytes);
	FUNC1(walk);

	walk->src.virt.addr = tmp;
	walk->dst.virt.addr = tmp;

	return 0;
}