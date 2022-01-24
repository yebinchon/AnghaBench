#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int (* sleep ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; } ;

/* Variables and functions */
 int FUNC0 (struct dvb_frontend*) ; 
 int FUNC1 (struct dvb_frontend*) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe)
{
	int ret;
	ret = FUNC1(fe);
	if (ret)
		return ret;
	return fe->ops.tuner_ops.sleep(fe);
}