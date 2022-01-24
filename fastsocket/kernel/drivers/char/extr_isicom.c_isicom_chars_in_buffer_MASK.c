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
struct tty_struct {int /*<<< orphan*/  name; struct isi_port* driver_data; } ;
struct isi_port {int xmit_cnt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct isi_port*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC1(struct tty_struct *tty)
{
	struct isi_port *port = tty->driver_data;
	if (FUNC0(port, tty->name, "isicom_chars_in_buffer"))
		return 0;
	return port->xmit_cnt;
}