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
struct vmlogrdr_priv_t {TYPE_1__* device; int /*<<< orphan*/  minor_num; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vmlogrdr_attr_group ; 
 int /*<<< orphan*/  vmlogrdr_class ; 
 int /*<<< orphan*/  vmlogrdr_major ; 

__attribute__((used)) static int FUNC4(struct vmlogrdr_priv_t *priv)
{
	FUNC1(vmlogrdr_class, FUNC0(vmlogrdr_major, priv->minor_num));
	if (priv->device != NULL) {
		FUNC3(&priv->device->kobj, &vmlogrdr_attr_group);
		FUNC2(priv->device);
		priv->device=NULL;
	}
	return 0;
}