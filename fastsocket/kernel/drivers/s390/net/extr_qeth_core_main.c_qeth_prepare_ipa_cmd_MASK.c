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
struct qeth_cmd_buffer {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {char ulp_connection_r; } ;
struct qeth_card {TYPE_1__ token; } ;

/* Variables and functions */
 char* IPA_PDU_HEADER ; 
 int IPA_PDU_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int QETH_MPC_TOKEN_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC3(struct qeth_card *card, struct qeth_cmd_buffer *iob,
		char prot_type)
{
	FUNC2(iob->data, IPA_PDU_HEADER, IPA_PDU_HEADER_SIZE);
	FUNC2(FUNC1(iob->data), &prot_type, 1);
	FUNC2(FUNC0(iob->data),
	       &card->token.ulp_connection_r, QETH_MPC_TOKEN_LENGTH);
}