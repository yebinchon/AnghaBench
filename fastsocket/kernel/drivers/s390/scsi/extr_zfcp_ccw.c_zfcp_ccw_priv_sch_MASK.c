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
struct zfcp_adapter {TYPE_2__* ccw_device; } ;
struct TYPE_3__ {scalar_t__ dev_model; } ;
struct TYPE_4__ {TYPE_1__ id; } ;

/* Variables and functions */
 scalar_t__ ZFCP_MODEL_PRIV ; 

int FUNC0(struct zfcp_adapter *adapter)
{
	return adapter->ccw_device->id.dev_model == ZFCP_MODEL_PRIV;
}