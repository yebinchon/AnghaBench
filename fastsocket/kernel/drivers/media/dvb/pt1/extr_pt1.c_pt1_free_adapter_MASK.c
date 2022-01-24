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
struct TYPE_3__ {int /*<<< orphan*/  (* close ) (TYPE_1__*) ;} ;
struct TYPE_4__ {TYPE_1__ dmx; } ;
struct pt1_adapter {scalar_t__ buf; int /*<<< orphan*/  adap; TYPE_2__ demux; int /*<<< orphan*/  dmxdev; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct pt1_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct pt1_adapter *adap)
{
	FUNC2(&adap->net);
	adap->demux.dmx.close(&adap->demux.dmx);
	FUNC1(&adap->dmxdev);
	FUNC0(&adap->demux);
	FUNC3(&adap->adap);
	FUNC4((unsigned long)adap->buf);
	FUNC5(adap);
}