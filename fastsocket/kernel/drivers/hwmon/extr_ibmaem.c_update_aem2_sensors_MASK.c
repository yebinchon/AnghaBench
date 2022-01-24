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
struct aem_data {int /*<<< orphan*/  lock; int /*<<< orphan*/ * pcap; int /*<<< orphan*/ * temp; scalar_t__ valid; scalar_t__ last_updated; } ;

/* Variables and functions */
 int /*<<< orphan*/  AEM_EXHAUST_ELEMENT ; 
 int /*<<< orphan*/  AEM_POWER_CAP_ELEMENT ; 
 int POWER_AUX ; 
 int POWER_CAP ; 
 scalar_t__ REFRESH_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (struct aem_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct aem_data*) ; 

__attribute__((used)) static void FUNC5(struct aem_data *data)
{
	int i;

	FUNC1(&data->lock);
	if (FUNC3(jiffies, data->last_updated + REFRESH_INTERVAL) &&
	    data->valid)
		goto out;

	FUNC4(data);
	FUNC0(data, AEM_EXHAUST_ELEMENT, 0, &data->temp[0], 1);
	FUNC0(data, AEM_EXHAUST_ELEMENT, 1, &data->temp[1], 1);

	for (i = POWER_CAP; i <= POWER_AUX; i++)
		FUNC0(data, AEM_POWER_CAP_ELEMENT, i,
				&data->pcap[i], 2);
out:
	FUNC2(&data->lock);
}