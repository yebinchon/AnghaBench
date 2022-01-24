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
typedef  int /*<<< orphan*/  u16 ;
struct dvb_usb_adapter {int /*<<< orphan*/  fe; TYPE_1__* dev; } ;
struct dib0700_state {scalar_t__ is_dib7000pc; } ;
struct TYPE_2__ {struct dib0700_state* priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_usb_adapter *adapter, int index,
		u16 pid, int onoff)
{
	struct dib0700_state *st = adapter->dev->priv;
	if (st->is_dib7000pc)
		return FUNC1(adapter->fe, index, pid, onoff);
	return FUNC0(adapter->fe, index, pid, onoff);
}