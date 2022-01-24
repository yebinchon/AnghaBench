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
struct tty_struct {struct hvc_struct* driver_data; } ;
struct hvc_struct {scalar_t__ count; scalar_t__ n_outbuf; int outbuf_size; int outbuf; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EIO ; 
 int EPIPE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct hvc_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty, const unsigned char *buf, int count)
{
	struct hvc_struct *hp = tty->driver_data;
	unsigned long flags;
	int rsize, written = 0;

	/* This write was probably executed during a tty close. */
	if (!hp)
		return -EPIPE;

	if (hp->count <= 0)
		return -EIO;

	FUNC3(&hp->lock, flags);

	/* Push pending writes */
	if (hp->n_outbuf > 0)
		FUNC1(hp);

	while (count > 0 && (rsize = hp->outbuf_size - hp->n_outbuf) > 0) {
		if (rsize > count)
			rsize = count;
		FUNC2(hp->outbuf + hp->n_outbuf, buf, rsize);
		count -= rsize;
		buf += rsize;
		hp->n_outbuf += rsize;
		written += rsize;
		FUNC1(hp);
	}
	FUNC4(&hp->lock, flags);

	/*
	 * Racy, but harmless, kick thread if there is still pending data.
	 */
	if (hp->n_outbuf)
		FUNC0();

	return written;
}