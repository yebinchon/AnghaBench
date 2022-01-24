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
struct iwl_spectrum_notification {int /*<<< orphan*/  state; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {int /*<<< orphan*/  measurement_status; int /*<<< orphan*/  measure_report; } ;
struct iwl_device_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  MEASUREMENT_READY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct iwl_spectrum_notification*,int) ; 
 struct iwl_rx_packet* FUNC2 (struct iwl_rx_cmd_buffer*) ; 

__attribute__((used)) static int FUNC3(struct iwl_priv *priv,
					  struct iwl_rx_cmd_buffer *rxb,
					  struct iwl_device_cmd *cmd)
{
	struct iwl_rx_packet *pkt = FUNC2(rxb);
	struct iwl_spectrum_notification *report = (void *)pkt->data;

	if (!report->state) {
		FUNC0(priv,
			"Spectrum Measure Notification: Start\n");
		return 0;
	}

	FUNC1(&priv->measure_report, report, sizeof(*report));
	priv->measurement_status |= MEASUREMENT_READY;
	return 0;
}