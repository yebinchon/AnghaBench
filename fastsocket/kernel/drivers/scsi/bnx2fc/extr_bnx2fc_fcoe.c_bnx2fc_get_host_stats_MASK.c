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
struct fcoe_statistics_params {int dummy; } ;
struct fcoe_port {struct bnx2fc_interface* priv; } ;
struct fc_lport {int dummy; } ;
struct fc_host_statistics {int tx_words; int rx_words; scalar_t__ prim_seq_protocol_err_count; scalar_t__ loss_of_signal_count; scalar_t__ loss_of_sync_count; scalar_t__ nos_count; scalar_t__ lip_count; scalar_t__ dumped_frames; int /*<<< orphan*/  rx_frames; int /*<<< orphan*/  tx_frames; int /*<<< orphan*/  invalid_crc_count; } ;
struct bnx2fc_interface {struct bnx2fc_hba* hba; } ;
struct TYPE_2__ {int fcoe_tx_byte_cnt; int fcoe_rx_byte_cnt; scalar_t__ fcoe_rx_pkt_cnt; scalar_t__ fcoe_tx_pkt_cnt; scalar_t__ fc_crc_cnt; } ;
struct bnx2fc_hba {scalar_t__ stats_buffer; int /*<<< orphan*/  prev_stats; TYPE_1__ bfw_stats; int /*<<< orphan*/  stat_req_done; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2fc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int HZ ; 
 scalar_t__ FUNC2 (struct bnx2fc_hba*) ; 
 int /*<<< orphan*/  fc_crc_cnt ; 
 struct fc_host_statistics* FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  fcoe_rx_byte_cnt ; 
 int /*<<< orphan*/  fcoe_rx_pkt_cnt ; 
 int /*<<< orphan*/  fcoe_tx_byte_cnt ; 
 int /*<<< orphan*/  fcoe_tx_pkt_cnt ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct fcoe_port* FUNC5 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  rx_stat0 ; 
 int /*<<< orphan*/  rx_stat2 ; 
 struct fc_lport* FUNC7 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  tx_stat ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct fc_host_statistics *FUNC9(struct Scsi_Host *shost)
{
	struct fc_host_statistics *bnx2fc_stats;
	struct fc_lport *lport = FUNC7(shost);
	struct fcoe_port *port = FUNC5(lport);
	struct bnx2fc_interface *interface = port->priv;
	struct bnx2fc_hba *hba = interface->hba;
	struct fcoe_statistics_params *fw_stats;
	int rc = 0;

	fw_stats = (struct fcoe_statistics_params *)hba->stats_buffer;
	if (!fw_stats)
		return NULL;

	bnx2fc_stats = FUNC3(shost);

	FUNC4(&hba->stat_req_done);
	if (FUNC2(hba))
		return bnx2fc_stats;
	rc = FUNC8(&hba->stat_req_done, (2 * HZ));
	if (!rc) {
		FUNC0(lport, "FW stat req timed out\n");
		return bnx2fc_stats;
	}
	FUNC1(hba, rx_stat2, fc_crc_cnt);
	bnx2fc_stats->invalid_crc_count += hba->bfw_stats.fc_crc_cnt;
	FUNC1(hba, tx_stat, fcoe_tx_pkt_cnt);
	bnx2fc_stats->tx_frames += hba->bfw_stats.fcoe_tx_pkt_cnt;
	FUNC1(hba, tx_stat, fcoe_tx_byte_cnt);
	bnx2fc_stats->tx_words += ((hba->bfw_stats.fcoe_tx_byte_cnt) / 4);
	FUNC1(hba, rx_stat0, fcoe_rx_pkt_cnt);
	bnx2fc_stats->rx_frames += hba->bfw_stats.fcoe_rx_pkt_cnt;
	FUNC1(hba, rx_stat0, fcoe_rx_byte_cnt);
	bnx2fc_stats->rx_words += ((hba->bfw_stats.fcoe_rx_byte_cnt) / 4);

	bnx2fc_stats->dumped_frames = 0;
	bnx2fc_stats->lip_count = 0;
	bnx2fc_stats->nos_count = 0;
	bnx2fc_stats->loss_of_sync_count = 0;
	bnx2fc_stats->loss_of_signal_count = 0;
	bnx2fc_stats->prim_seq_protocol_err_count = 0;

	FUNC6(&hba->prev_stats, hba->stats_buffer,
	       sizeof(struct fcoe_statistics_params));
	return bnx2fc_stats;
}