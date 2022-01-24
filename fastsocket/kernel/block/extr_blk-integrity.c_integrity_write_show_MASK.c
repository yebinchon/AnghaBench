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
struct blk_integrity {int flags; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int INTEGRITY_FLAG_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC1(struct blk_integrity *bi, char *page)
{
	return FUNC0(page, "%d\n", (bi->flags & INTEGRITY_FLAG_WRITE) != 0);
}