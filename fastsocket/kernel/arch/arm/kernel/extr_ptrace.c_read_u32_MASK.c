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
typedef  int /*<<< orphan*/  u32 ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct task_struct*,unsigned long,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC1(struct task_struct *task, unsigned long addr, u32 *res)
{
	int ret;

	ret = FUNC0(task, addr, res, sizeof(*res), 0);

	return ret == sizeof(*res) ? 0 : -EIO;
}