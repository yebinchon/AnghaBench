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
struct tifm_dev {int dummy; } ;
struct TYPE_2__ {struct device* parent; int /*<<< orphan*/ * class; } ;
struct tifm_adapter {unsigned int num_sockets; int /*<<< orphan*/  lock; TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct tifm_adapter* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tifm_adapter_class ; 

struct tifm_adapter *FUNC3(unsigned int num_sockets,
					struct device *dev)
{
	struct tifm_adapter *fm;

	fm = FUNC1(sizeof(struct tifm_adapter)
		     + sizeof(struct tifm_dev*) * num_sockets, GFP_KERNEL);
	if (fm) {
		fm->dev.class = &tifm_adapter_class;
		fm->dev.parent = dev;
		FUNC0(&fm->dev);
		FUNC2(&fm->lock);
		fm->num_sockets = num_sockets;
	}
	return fm;
}