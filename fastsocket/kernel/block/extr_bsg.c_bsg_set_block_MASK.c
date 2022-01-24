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
struct file {int f_flags; } ;
struct bsg_device {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSG_F_BLOCK ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct bsg_device *bd, struct file *file)
{
	if (file->f_flags & O_NONBLOCK)
		FUNC0(BSG_F_BLOCK, &bd->flags);
	else
		FUNC1(BSG_F_BLOCK, &bd->flags);
}