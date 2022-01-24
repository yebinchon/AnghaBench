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
struct sdio_func {int dummy; } ;
struct sdio_driver {struct sdio_device_id* id_table; } ;
struct sdio_device_id {scalar_t__ device; scalar_t__ vendor; scalar_t__ class; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sdio_func*,struct sdio_device_id const*) ; 

__attribute__((used)) static const struct sdio_device_id *FUNC1(struct sdio_func *func,
	struct sdio_driver *sdrv)
{
	const struct sdio_device_id *ids;

	ids = sdrv->id_table;

	if (ids) {
		while (ids->class || ids->vendor || ids->device) {
			if (FUNC0(func, ids))
				return ids;
			ids++;
		}
	}

	return NULL;
}