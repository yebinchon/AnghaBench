#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ni_gpct {TYPE_1__* mite_chan; } ;
struct comedi_async {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_OUTPUT ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  NI_GPCT_ARM_IMMEDIATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int FUNC2 (struct ni_gpct*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ni_gpct*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct ni_gpct *counter,
			     struct comedi_async *async)
{
	FUNC4("ni_tio: output commands not yet implemented.\n");
	return -ENOTSUPP;

	counter->mite_chan->dir = COMEDI_OUTPUT;
	FUNC1(counter->mite_chan, 32, 32);
	FUNC3(counter, 1, 0);
	FUNC0(counter->mite_chan);
	return FUNC2(counter, 1, NI_GPCT_ARM_IMMEDIATE);
}