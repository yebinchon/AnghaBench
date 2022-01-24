#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  name; scalar_t__ driver_data; } ;
struct TYPE_4__ {TYPE_2__* tx_cur; TYPE_2__* tx_bd_base; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ ser_info_t ;
struct TYPE_5__ {int status; int length; scalar_t__ buf; } ;
typedef  TYPE_2__ QUICC_BD ;

/* Variables and functions */
 int BD_SC_READY ; 
 int BD_SC_WRAP ; 
 int /*<<< orphan*/  TX_BUF_SIZE ; 
 int /*<<< orphan*/  TX_WAKEUP ; 
 scalar_t__ FUNC0 (unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,unsigned char const*,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct tty_struct * tty,
		    const unsigned char *buf, int count)
{
	int	c, ret = 0;
	ser_info_t *info = (ser_info_t *)tty->driver_data;
	volatile QUICC_BD *bdp;

#ifdef CONFIG_KGDB
	/* Try to let stub handle output. Returns true if it did. */ 
	if (kgdb_output_string(buf, count))
		return ret;
#endif

	if (FUNC3(info, tty->name, "rs_write"))
		return 0;

	if (!tty) 
		return 0;

	bdp = info->tx_cur;

	while (1) {
		c = FUNC2(count, TX_BUF_SIZE);

		if (c <= 0)
			break;

		if (bdp->status & BD_SC_READY) {
			info->flags |= TX_WAKEUP;
			break;
		}

		/* memcpy(__va(bdp->buf), buf, c); */
		FUNC1((void *)bdp->buf, buf, c);

		bdp->length = c;
		bdp->status |= BD_SC_READY;

		buf += c;
		count -= c;
		ret += c;

		/* Get next BD.
		*/
		if (bdp->status & BD_SC_WRAP)
			bdp = info->tx_bd_base;
		else
			bdp++;
		info->tx_cur = (QUICC_BD *)bdp;
	}
	return ret;
}