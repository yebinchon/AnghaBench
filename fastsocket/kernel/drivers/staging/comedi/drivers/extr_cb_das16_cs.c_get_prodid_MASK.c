#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
struct TYPE_4__ {int TupleDataMax; int /*<<< orphan*/  Attributes; int /*<<< orphan*/  DesiredTuple; scalar_t__ TupleOffset; int /*<<< orphan*/ * TupleData; } ;
typedef  TYPE_1__ tuple_t ;
struct pcmcia_device {int dummy; } ;
struct comedi_device {int dummy; } ;
typedef  int /*<<< orphan*/  cisdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  CISTPL_MANFID ; 
 int /*<<< orphan*/  TUPLE_RETURN_COMMON ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pcmcia_device*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct pcmcia_device*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, struct pcmcia_device *link)
{
	tuple_t tuple;
	u_short buf[128];
	int prodid = 0;

	tuple.TupleData = (cisdata_t *) buf;
	tuple.TupleOffset = 0;
	tuple.TupleDataMax = 255;
	tuple.DesiredTuple = CISTPL_MANFID;
	tuple.Attributes = TUPLE_RETURN_COMMON;
	if ((FUNC1(link, &tuple) == 0) &&
	    (FUNC2(link, &tuple) == 0)) {
		prodid = FUNC0(buf[1]);
	}

	return prodid;
}