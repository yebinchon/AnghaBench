
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {int max_retry_count; int max_rport_retry_count; int e_d_tov; int r_a_tov; int service_params; int does_npiv; scalar_t__ lso_max; scalar_t__ lro_xid; scalar_t__ lro_enabled; scalar_t__ seq_offload; scalar_t__ crc_offload; scalar_t__ qfull; scalar_t__ link_up; } ;


 int FCP_SPPF_CONF_COMPL ;
 int FCP_SPPF_INIT_FCN ;
 int FCP_SPPF_RD_XRDY_DIS ;
 int FCP_SPPF_RETRY ;
 int fc_lport_config (struct fc_lport*) ;
 int fc_lport_init_stats (struct fc_lport*) ;

__attribute__((used)) static int fcoe_lport_config(struct fc_lport *lport)
{
 lport->link_up = 0;
 lport->qfull = 0;
 lport->max_retry_count = 3;
 lport->max_rport_retry_count = 3;
 lport->e_d_tov = 2 * 1000;
 lport->r_a_tov = 2 * 2 * 1000;
 lport->service_params = (FCP_SPPF_INIT_FCN | FCP_SPPF_RD_XRDY_DIS |
     FCP_SPPF_RETRY | FCP_SPPF_CONF_COMPL);
 lport->does_npiv = 1;

 fc_lport_init_stats(lport);


 fc_lport_config(lport);


 lport->crc_offload = 0;
 lport->seq_offload = 0;
 lport->lro_enabled = 0;
 lport->lro_xid = 0;
 lport->lso_max = 0;

 return 0;
}
