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
struct tty_struct {struct hso_serial* driver_data; } ;
struct hso_serial {int dummy; } ;

/* Variables and functions */

__attribute__((used)) static inline struct hso_serial *FUNC0(struct tty_struct *tty)
{
	if (tty)
		return tty->driver_data;
	return NULL;
}