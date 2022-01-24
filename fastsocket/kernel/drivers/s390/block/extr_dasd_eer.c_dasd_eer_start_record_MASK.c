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
typedef  int /*<<< orphan*/  tailcount ;
struct eerbuffer {int buffersize; int residual; int tail; } ;
typedef  int /*<<< orphan*/  count ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct eerbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct eerbuffer*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct eerbuffer*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct eerbuffer *eerb, int count)
{
	int tailcount;

	if (count + sizeof(count) > eerb->buffersize)
		return -ENOMEM;
	while (FUNC0(eerb) < count + sizeof(count)) {
		if (eerb->residual > 0) {
			eerb->tail += eerb->residual;
			if (eerb->tail >= eerb->buffersize)
				eerb->tail -= eerb->buffersize;
			eerb->residual = -1;
		}
		FUNC1(eerb, (char *) &tailcount,
				     sizeof(tailcount));
		eerb->tail += tailcount;
		if (eerb->tail >= eerb->buffersize)
			eerb->tail -= eerb->buffersize;
	}
	FUNC2(eerb, (char*) &count, sizeof(count));

	return 0;
}