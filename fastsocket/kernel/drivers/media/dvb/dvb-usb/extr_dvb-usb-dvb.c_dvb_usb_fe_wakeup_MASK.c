#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dvb_usb_adapter {int /*<<< orphan*/  (* fe_init ) (struct dvb_frontend*) ;int /*<<< orphan*/  dev; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct TYPE_2__ {struct dvb_usb_adapter* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_frontend*) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe)
{
	struct dvb_usb_adapter *adap = fe->dvb->priv;

	FUNC0(adap->dev, 1);

	if (adap->fe_init)
		adap->fe_init(fe);

	return 0;
}