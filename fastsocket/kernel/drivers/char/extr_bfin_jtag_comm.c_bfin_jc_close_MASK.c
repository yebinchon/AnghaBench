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
struct tty_struct {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ bfin_jc_count ; 
 int /*<<< orphan*/  bfin_jc_kthread ; 
 int /*<<< orphan*/ * bfin_jc_tty ; 
 int /*<<< orphan*/  bfin_jc_tty_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct tty_struct *tty, struct file *filp)
{
	FUNC0(&bfin_jc_tty_mutex);
	FUNC2("close %lu\n", bfin_jc_count);
	if (--bfin_jc_count == 0)
		bfin_jc_tty = NULL;
	FUNC3(bfin_jc_kthread);
	FUNC1(&bfin_jc_tty_mutex);
}