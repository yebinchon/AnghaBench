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
struct isowbuf_t {int write; unsigned char* data; unsigned char idle; } ;

/* Variables and functions */
 int BAS_OUTBUFSIZE ; 
 int /*<<< orphan*/  DEBUG_ISO ; 
 int /*<<< orphan*/  DEBUG_STREAM ; 
 int /*<<< orphan*/  DEBUG_STREAM_DUMP ; 
 int EAGAIN ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct isowbuf_t*) ; 
 int FUNC4 (struct isowbuf_t*) ; 
 int /*<<< orphan*/  FUNC5 (struct isowbuf_t*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static inline int FUNC7(struct isowbuf_t *iwb,
				   unsigned char *in, int count)
{
	int write;
	unsigned char c;

	if (FUNC6(count <= 0))
		return iwb->write;

	if (FUNC4(iwb) < count ||
	    !FUNC5(iwb)) {
		FUNC2(DEBUG_ISO, "can't put %d bytes", count);
		return -EAGAIN;
	}

	FUNC2(DEBUG_STREAM, "put %d bytes", count);
	FUNC1(DEBUG_STREAM_DUMP, "snd data", in, count);

	write = iwb->write;
	do {
		c = FUNC0(*in++);
		iwb->data[write++] = c;
		write %= BAS_OUTBUFSIZE;
	} while (--count > 0);
	iwb->write = write;
	iwb->idle = c;

	return FUNC3(iwb);
}