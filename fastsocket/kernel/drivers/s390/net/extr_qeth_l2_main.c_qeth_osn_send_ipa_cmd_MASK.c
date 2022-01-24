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
typedef  scalar_t__ u16 ;
struct qeth_cmd_buffer {int /*<<< orphan*/  data; } ;
struct qeth_card {int dummy; } ;

/* Variables and functions */
 scalar_t__ IPA_PDU_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QETH_PROT_OSN2 ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC6 (struct qeth_card*,scalar_t__,struct qeth_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct qeth_card*,struct qeth_cmd_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct qeth_card *card,
			struct qeth_cmd_buffer *iob, int data_len)
{
	u16 s1, s2;

	FUNC0(TRACE, 4, "osndipa");

	FUNC7(card, iob, QETH_PROT_OSN2);
	s1 = (u16)(IPA_PDU_HEADER_SIZE + data_len);
	s2 = (u16)data_len;
	FUNC5(FUNC4(iob->data), &s1, 2);
	FUNC5(FUNC1(iob->data), &s2, 2);
	FUNC5(FUNC2(iob->data), &s2, 2);
	FUNC5(FUNC3(iob->data), &s2, 2);
	return FUNC6(card, s1, iob);
}