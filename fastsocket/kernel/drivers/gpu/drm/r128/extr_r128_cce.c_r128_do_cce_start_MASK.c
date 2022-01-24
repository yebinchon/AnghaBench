#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int size_l2qw; } ;
struct TYPE_6__ {int cce_mode; int cce_running; TYPE_1__ ring; } ;
typedef  TYPE_2__ drm_r128_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  R128_PM4_BUFFER_ADDR ; 
 int /*<<< orphan*/  R128_PM4_BUFFER_CNTL ; 
 int R128_PM4_BUFFER_CNTL_NOUPDATE ; 
 int /*<<< orphan*/  R128_PM4_MICRO_CNTL ; 
 int R128_PM4_MICRO_FREERUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(drm_r128_private_t *dev_priv)
{
	FUNC2(dev_priv);

	FUNC1(R128_PM4_BUFFER_CNTL,
		   dev_priv->cce_mode | dev_priv->ring.size_l2qw
		   | R128_PM4_BUFFER_CNTL_NOUPDATE);
	FUNC0(R128_PM4_BUFFER_ADDR);	/* as per the sample code */
	FUNC1(R128_PM4_MICRO_CNTL, R128_PM4_MICRO_FREERUN);

	dev_priv->cce_running = 1;
}