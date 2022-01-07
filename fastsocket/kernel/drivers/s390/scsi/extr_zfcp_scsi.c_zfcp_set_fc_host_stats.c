
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsf_qtcb_bottom_port {int output_mb; int input_mb; int control_requests; int output_requests; int input_requests; int invalid_crcs; int invalid_tx_words; int psp_error_counts; int loss_of_signal; int loss_of_sync; int link_failure; int dumped_frames; int error_frames; int nos; int lip; int rx_words; int rx_frames; int tx_words; int tx_frames; int seconds_since_last_reset; } ;
struct fc_host_statistics {int fcp_output_megabytes; int fcp_input_megabytes; int fcp_control_requests; int fcp_output_requests; int fcp_input_requests; int invalid_crc_count; int invalid_tx_word_count; int prim_seq_protocol_err_count; int loss_of_signal_count; int loss_of_sync_count; int link_failure_count; int dumped_frames; int error_frames; int nos_count; int lip_count; int rx_words; int rx_frames; int tx_words; int tx_frames; int seconds_since_last_reset; } ;



__attribute__((used)) static void zfcp_set_fc_host_stats(struct fc_host_statistics *fc_stats,
       struct fsf_qtcb_bottom_port *data)
{
 fc_stats->seconds_since_last_reset = data->seconds_since_last_reset;
 fc_stats->tx_frames = data->tx_frames;
 fc_stats->tx_words = data->tx_words;
 fc_stats->rx_frames = data->rx_frames;
 fc_stats->rx_words = data->rx_words;
 fc_stats->lip_count = data->lip;
 fc_stats->nos_count = data->nos;
 fc_stats->error_frames = data->error_frames;
 fc_stats->dumped_frames = data->dumped_frames;
 fc_stats->link_failure_count = data->link_failure;
 fc_stats->loss_of_sync_count = data->loss_of_sync;
 fc_stats->loss_of_signal_count = data->loss_of_signal;
 fc_stats->prim_seq_protocol_err_count = data->psp_error_counts;
 fc_stats->invalid_tx_word_count = data->invalid_tx_words;
 fc_stats->invalid_crc_count = data->invalid_crcs;
 fc_stats->fcp_input_requests = data->input_requests;
 fc_stats->fcp_output_requests = data->output_requests;
 fc_stats->fcp_control_requests = data->control_requests;
 fc_stats->fcp_input_megabytes = data->input_mb;
 fc_stats->fcp_output_megabytes = data->output_mb;
}
