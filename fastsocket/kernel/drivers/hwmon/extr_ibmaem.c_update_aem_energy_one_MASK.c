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
struct aem_data {int /*<<< orphan*/ * energy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AEM_ENERGY_ELEMENT ; 
 int /*<<< orphan*/  FUNC0 (struct aem_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC1(struct aem_data *data, int which)
{
	FUNC0(data, AEM_ENERGY_ELEMENT, which,
			&data->energy[which], 8);
}