
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_stats {TYPE_1__* custom; scalar_t__ custom_length; scalar_t__ timeout_err; scalar_t__ digest_err; int r2t_pdus; int tmfcmd_pdus; int tmfrsp_pdus; int datain_pdus; int scsicmd_pdus; int scsirsp_pdus; int dataout_pdus; int rxdata_octets; int txdata_octets; } ;
struct iscsi_conn {int eh_abort_cnt; int r2t_pdus_cnt; int tmfcmd_pdus_cnt; int tmfrsp_pdus_cnt; int datain_pdus_cnt; int scsicmd_pdus_cnt; int scsirsp_pdus_cnt; int dataout_pdus_cnt; int rxdata_octets; int txdata_octets; scalar_t__ dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct beiscsi_hba {int dummy; } ;
struct beiscsi_conn {struct beiscsi_hba* phba; } ;
struct TYPE_2__ {int value; int desc; } ;


 int BEISCSI_LOG_CONFIG ;
 int KERN_INFO ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 int strcpy (int ,char*) ;

void beiscsi_conn_get_stats(struct iscsi_cls_conn *cls_conn,
       struct iscsi_stats *stats)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct beiscsi_hba *phba = ((void*)0);

 phba = ((struct beiscsi_conn *)conn->dd_data)->phba;
 beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
      "BS_%d : In beiscsi_conn_get_stats\n");

 stats->txdata_octets = conn->txdata_octets;
 stats->rxdata_octets = conn->rxdata_octets;
 stats->dataout_pdus = conn->dataout_pdus_cnt;
 stats->scsirsp_pdus = conn->scsirsp_pdus_cnt;
 stats->scsicmd_pdus = conn->scsicmd_pdus_cnt;
 stats->datain_pdus = conn->datain_pdus_cnt;
 stats->tmfrsp_pdus = conn->tmfrsp_pdus_cnt;
 stats->tmfcmd_pdus = conn->tmfcmd_pdus_cnt;
 stats->r2t_pdus = conn->r2t_pdus_cnt;
 stats->digest_err = 0;
 stats->timeout_err = 0;
 stats->custom_length = 0;
 strcpy(stats->custom[0].desc, "eh_abort_cnt");
 stats->custom[0].value = conn->eh_abort_cnt;
}
