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
typedef  int /*<<< orphan*/  tmp ;
struct serial_struct {int /*<<< orphan*/  custom_divisor; int /*<<< orphan*/  closing_wait; int /*<<< orphan*/  close_delay; int /*<<< orphan*/  baud_base; int /*<<< orphan*/  flags; int /*<<< orphan*/  irq; int /*<<< orphan*/  port; int /*<<< orphan*/  line; int /*<<< orphan*/  type; } ;
struct m68k_serial {int /*<<< orphan*/  custom_divisor; int /*<<< orphan*/  closing_wait; int /*<<< orphan*/  close_delay; int /*<<< orphan*/  baud_base; int /*<<< orphan*/  flags; int /*<<< orphan*/  irq; int /*<<< orphan*/  port; int /*<<< orphan*/  line; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct serial_struct*,struct serial_struct*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct serial_struct*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct m68k_serial * info,
			   struct serial_struct * retinfo)
{
	struct serial_struct tmp;
  
	if (!retinfo)
		return -EFAULT;
	FUNC1(&tmp, 0, sizeof(tmp));
	tmp.type = info->type;
	tmp.line = info->line;
	tmp.port = info->port;
	tmp.irq = info->irq;
	tmp.flags = info->flags;
	tmp.baud_base = info->baud_base;
	tmp.close_delay = info->close_delay;
	tmp.closing_wait = info->closing_wait;
	tmp.custom_divisor = info->custom_divisor;
	FUNC0(retinfo,&tmp,sizeof(*retinfo));
	return 0;
}