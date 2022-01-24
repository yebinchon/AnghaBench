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
struct dvb_ringbuffer {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_ringbuffer*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct dvb_ringbuffer *cirbuf, struct dvb_ringbuffer *ciwbuf, int size)
{
	struct dvb_ringbuffer *tab[] = { cirbuf, ciwbuf, NULL }, **p;
	void *data;

	for (p = tab; *p; p++) {
		data = FUNC2(size);
		if (!data) {
			while (p-- != tab) {
				FUNC1(p[0]->data);
				p[0]->data = NULL;
			}
			return -ENOMEM;
		}
		FUNC0(*p, data, size);
	}
	return 0;
}