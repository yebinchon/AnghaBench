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
typedef  int /*<<< orphan*/  uint32_t ;
struct qla_hw_data {int max_fibre_devices; } ;
struct gid_list_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 

__attribute__((used)) static inline int
FUNC1(struct qla_hw_data *ha)
{
	if (FUNC0(ha))
		return sizeof(uint32_t) * 32;
	else
		return sizeof(struct gid_list_info) * ha->max_fibre_devices;
}