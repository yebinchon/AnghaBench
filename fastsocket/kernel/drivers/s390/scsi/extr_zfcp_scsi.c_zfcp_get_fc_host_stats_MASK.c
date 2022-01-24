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
struct zfcp_adapter {scalar_t__ stats_reset; int /*<<< orphan*/  stats_reset_data; int /*<<< orphan*/  qdio; } ;
struct fsf_qtcb_bottom_port {scalar_t__ seconds_since_last_reset; } ;
struct fc_host_statistics {int dummy; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HZ ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct fsf_qtcb_bottom_port*) ; 
 struct fsf_qtcb_bottom_port* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_host_statistics*,struct fsf_qtcb_bottom_port*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct fsf_qtcb_bottom_port*) ; 
 struct fc_host_statistics* FUNC4 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_host_statistics*,struct fsf_qtcb_bottom_port*) ; 

__attribute__((used)) static struct fc_host_statistics *FUNC6(struct Scsi_Host *host)
{
	struct zfcp_adapter *adapter;
	struct fc_host_statistics *fc_stats;
	struct fsf_qtcb_bottom_port *data;
	int ret;

	adapter = (struct zfcp_adapter *)host->hostdata[0];
	fc_stats = FUNC4(adapter);
	if (!fc_stats)
		return NULL;

	data = FUNC1(sizeof(*data), GFP_KERNEL);
	if (!data)
		return NULL;

	ret = FUNC3(adapter->qdio, data);
	if (ret) {
		FUNC0(data);
		return NULL;
	}

	if (adapter->stats_reset &&
	    ((jiffies/HZ - adapter->stats_reset) <
	     data->seconds_since_last_reset))
		FUNC2(fc_stats, data,
					  adapter->stats_reset_data);
	else
		FUNC5(fc_stats, data);

	FUNC0(data);
	return fc_stats;
}