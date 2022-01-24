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
struct device {int /*<<< orphan*/  driver; } ;
struct amba_id {int dummy; } ;
struct amba_driver {int (* probe ) (struct amba_device*,struct amba_id*) ;int /*<<< orphan*/  id_table; } ;
struct amba_device {int dummy; } ;

/* Variables and functions */
 struct amba_id* FUNC0 (int /*<<< orphan*/ ,struct amba_device*) ; 
 int FUNC1 (struct amba_device*,struct amba_id*) ; 
 struct amba_device* FUNC2 (struct device*) ; 
 struct amba_driver* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct amba_device *pcdev = FUNC2(dev);
	struct amba_driver *pcdrv = FUNC3(dev->driver);
	struct amba_id *id;

	id = FUNC0(pcdrv->id_table, pcdev);

	return pcdrv->probe(pcdev, id);
}