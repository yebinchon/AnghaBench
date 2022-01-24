#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_9__ {char* name; TYPE_2__ dev; TYPE_1__* algo_data; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; } ;
struct TYPE_6__ {int running; int /*<<< orphan*/  aux_ch; scalar_t__ address; } ;
struct intel_dp {TYPE_4__ adapter; TYPE_1__ algo; } ;
struct TYPE_8__ {int /*<<< orphan*/  kdev; } ;
struct intel_connector {TYPE_3__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  I2C_CLASS_DDC ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  intel_dp_i2c_aux_ch ; 
 int /*<<< orphan*/  FUNC2 (struct intel_dp*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

__attribute__((used)) static int
FUNC6(struct intel_dp *intel_dp,
		  struct intel_connector *intel_connector, const char *name)
{
	int	ret;

	FUNC0("i2c_init %s\n", name);
	intel_dp->algo.running = false;
	intel_dp->algo.address = 0;
	intel_dp->algo.aux_ch = intel_dp_i2c_aux_ch;

	FUNC4(&intel_dp->adapter, '\0', sizeof(intel_dp->adapter));
	intel_dp->adapter.owner = THIS_MODULE;
	intel_dp->adapter.class = I2C_CLASS_DDC;
	FUNC5(intel_dp->adapter.name, name, sizeof(intel_dp->adapter.name) - 1);
	intel_dp->adapter.name[sizeof(intel_dp->adapter.name) - 1] = '\0';
	intel_dp->adapter.algo_data = &intel_dp->algo;
	intel_dp->adapter.dev.parent = &intel_connector->base.kdev;

	FUNC3(intel_dp);
	ret = FUNC1(&intel_dp->adapter);
	FUNC2(intel_dp, false);
	return ret;
}