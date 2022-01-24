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
typedef  int u8 ;
struct dvb_demux {int tsbufp; int* tsbuf; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_demux*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct dvb_demux *demux, const u8 *buf, size_t count)
{
	int p = 0, i, j;
	u8 tmppack[188];

	FUNC2(&demux->lock);

	if (demux->tsbufp) {
		i = demux->tsbufp;
		j = 204 - i;
		if (count < j) {
			FUNC1(&demux->tsbuf[i], buf, count);
			demux->tsbufp += count;
			goto bailout;
		}
		FUNC1(&demux->tsbuf[i], buf, j);
		if ((demux->tsbuf[0] == 0x47) || (demux->tsbuf[0] == 0xB8)) {
			FUNC1(tmppack, demux->tsbuf, 188);
			if (tmppack[0] == 0xB8)
				tmppack[0] = 0x47;
			FUNC0(demux, tmppack);
		}
		demux->tsbufp = 0;
		p += j;
	}

	while (p < count) {
		if ((buf[p] == 0x47) || (buf[p] == 0xB8)) {
			if (count - p >= 204) {
				FUNC1(tmppack, &buf[p], 188);
				if (tmppack[0] == 0xB8)
					tmppack[0] = 0x47;
				FUNC0(demux, tmppack);
				p += 204;
			} else {
				i = count - p;
				FUNC1(demux->tsbuf, &buf[p], i);
				demux->tsbufp = i;
				goto bailout;
			}
		} else {
			p++;
		}
	}

bailout:
	FUNC3(&demux->lock);
}