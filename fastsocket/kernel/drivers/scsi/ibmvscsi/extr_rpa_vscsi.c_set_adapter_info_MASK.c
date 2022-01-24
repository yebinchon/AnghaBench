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
struct TYPE_2__ {int mad_version; int os_type; int /*<<< orphan*/  partition_number; int /*<<< orphan*/  partition_name; int /*<<< orphan*/  srp_version; } ;
struct ibmvscsi_host_data {TYPE_1__ madapter_info; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SRP_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  partition_name ; 
 int /*<<< orphan*/  partition_number ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct ibmvscsi_host_data *hostdata)
{
	FUNC1(&hostdata->madapter_info, 0x00,
			sizeof(hostdata->madapter_info));

	FUNC0(hostdata->dev, "SRP_VERSION: %s\n", SRP_VERSION);
	FUNC2(hostdata->madapter_info.srp_version, SRP_VERSION);

	FUNC3(hostdata->madapter_info.partition_name, partition_name,
			sizeof(hostdata->madapter_info.partition_name));

	hostdata->madapter_info.partition_number = partition_number;

	hostdata->madapter_info.mad_version = 1;
	hostdata->madapter_info.os_type = 2;
}