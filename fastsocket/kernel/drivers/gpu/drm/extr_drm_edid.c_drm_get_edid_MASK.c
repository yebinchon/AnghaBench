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
struct i2c_adapter {int dummy; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_connector*,struct i2c_adapter*) ; 
 scalar_t__ FUNC1 (struct i2c_adapter*) ; 

struct edid *FUNC2(struct drm_connector *connector,
			  struct i2c_adapter *adapter)
{
	struct edid *edid = NULL;

	if (FUNC1(adapter))
		edid = (struct edid *)FUNC0(connector, adapter);

	return edid;
}