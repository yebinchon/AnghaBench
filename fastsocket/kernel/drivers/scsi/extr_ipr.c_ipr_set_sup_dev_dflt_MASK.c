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
struct ipr_supported_device {int num_records; scalar_t__ reserved; int /*<<< orphan*/  data_length; int /*<<< orphan*/  vpids; } ;
struct ipr_std_inq_vpids {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ipr_std_inq_vpids*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ipr_supported_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ipr_supported_device *supported_dev,
				 struct ipr_std_inq_vpids *vpids)
{
	FUNC2(supported_dev, 0, sizeof(struct ipr_supported_device));
	FUNC1(&supported_dev->vpids, vpids, sizeof(struct ipr_std_inq_vpids));
	supported_dev->num_records = 1;
	supported_dev->data_length =
		FUNC0(sizeof(struct ipr_supported_device));
	supported_dev->reserved = 0;
}