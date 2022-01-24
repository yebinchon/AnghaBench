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
struct tty_struct {struct ipw_tty* driver_data; } ;
struct ipw_tty {int /*<<< orphan*/  open_count; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int FUNC0 (struct ipw_tty*,unsigned int,unsigned int) ; 

__attribute__((used)) static int
FUNC1(struct tty_struct *linux_tty, struct file *file,
	     unsigned int set, unsigned int clear)
{
	struct ipw_tty *tty = linux_tty->driver_data;
	/* FIXME: Exactly how is the tty object locked here .. */

	if (!tty)
		return -ENODEV;

	if (!tty->open_count)
		return -EINVAL;

	return FUNC0(tty, set, clear);
}