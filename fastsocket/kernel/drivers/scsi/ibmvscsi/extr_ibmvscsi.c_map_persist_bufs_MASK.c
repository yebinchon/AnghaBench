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
struct ibmvscsi_host_data {void* caps_addr; int /*<<< orphan*/  dev; void* adapter_info_addr; int /*<<< orphan*/  madapter_info; int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ibmvscsi_host_data *hostdata)
{

	hostdata->caps_addr = FUNC1(hostdata->dev, &hostdata->caps,
					     sizeof(hostdata->caps), DMA_BIDIRECTIONAL);

	if (FUNC2(hostdata->dev, hostdata->caps_addr)) {
		FUNC0(hostdata->dev, "Unable to map capabilities buffer!\n");
		return 1;
	}

	hostdata->adapter_info_addr = FUNC1(hostdata->dev,
						     &hostdata->madapter_info,
						     sizeof(hostdata->madapter_info),
						     DMA_BIDIRECTIONAL);
	if (FUNC2(hostdata->dev, hostdata->adapter_info_addr)) {
		FUNC0(hostdata->dev, "Unable to map adapter info buffer!\n");
		FUNC3(hostdata->dev, hostdata->caps_addr,
				 sizeof(hostdata->caps), DMA_BIDIRECTIONAL);
		return 1;
	}

	return 0;
}