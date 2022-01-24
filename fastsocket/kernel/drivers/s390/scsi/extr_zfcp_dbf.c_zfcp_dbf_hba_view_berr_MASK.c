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
struct fsf_bit_error_payload {int /*<<< orphan*/  current_transmit_b2b_credit; int /*<<< orphan*/  advertised_transmit_b2b_credit; int /*<<< orphan*/  current_receive_b2b_credit; int /*<<< orphan*/  advertised_receive_b2b_credit; int /*<<< orphan*/  elastic_buffer_overrun_error_count; int /*<<< orphan*/  primitive_sequence_event_timeout_count; int /*<<< orphan*/  crc_error_count; int /*<<< orphan*/  invalid_transmission_word_error_count; int /*<<< orphan*/  primitive_sequence_error_count; int /*<<< orphan*/  loss_of_signal_error_count; int /*<<< orphan*/  loss_of_sync_error_count; int /*<<< orphan*/  link_failure_error_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(char **p, struct fsf_bit_error_payload *r)
{
	FUNC0(p, "link_failures", "%d", r->link_failure_error_count);
	FUNC0(p, "loss_of_sync_err", "%d", r->loss_of_sync_error_count);
	FUNC0(p, "loss_of_sig_err", "%d", r->loss_of_signal_error_count);
	FUNC0(p, "prim_seq_err", "%d",
		     r->primitive_sequence_error_count);
	FUNC0(p, "inval_trans_word_err", "%d",
		     r->invalid_transmission_word_error_count);
	FUNC0(p, "CRC_errors", "%d", r->crc_error_count);
	FUNC0(p, "prim_seq_event_to", "%d",
		     r->primitive_sequence_event_timeout_count);
	FUNC0(p, "elast_buf_overrun_err", "%d",
		     r->elastic_buffer_overrun_error_count);
	FUNC0(p, "adv_rec_buf2buf_cred", "%d",
		     r->advertised_receive_b2b_credit);
	FUNC0(p, "curr_rec_buf2buf_cred", "%d",
		     r->current_receive_b2b_credit);
	FUNC0(p, "adv_trans_buf2buf_cred", "%d",
		     r->advertised_transmit_b2b_credit);
	FUNC0(p, "curr_trans_buf2buf_cred", "%d",
		     r->current_transmit_b2b_credit);
}