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
struct cx88_dmaqueue {int /*<<< orphan*/  timeout; } ;
struct cx8802_dev {struct cx88_dmaqueue mpegq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx8802_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cx8802_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

void FUNC4(struct cx8802_dev *dev)
{
	struct cx88_dmaqueue *q = &dev->mpegq;

	FUNC3( 1, "cx8802_cancel_buffers" );
	FUNC1(&q->timeout);
	FUNC0(dev);
	FUNC2(dev,"cancel",0);
}