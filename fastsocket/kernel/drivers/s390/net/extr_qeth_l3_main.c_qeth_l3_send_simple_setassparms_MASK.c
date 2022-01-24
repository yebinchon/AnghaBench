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
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
typedef  enum qeth_ipa_funcs { ____Placeholder_qeth_ipa_funcs } qeth_ipa_funcs ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_PROT_IPV4 ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  qeth_l3_default_setassparms_cb ; 
 struct qeth_cmd_buffer* FUNC1 (struct qeth_card*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qeth_card*,struct qeth_cmd_buffer*,int,long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct qeth_card *card,
		enum qeth_ipa_funcs ipa_func, __u16 cmd_code, long data)
{
	int rc;
	int length = 0;
	struct qeth_cmd_buffer *iob;

	FUNC0(TRACE, 4, "simassp4");
	if (data)
		length = sizeof(__u32);
	iob = FUNC1(card, ipa_func, cmd_code,
				       length, QETH_PROT_IPV4);
	rc = FUNC2(card, iob, length, data,
				   qeth_l3_default_setassparms_cb, NULL);
	return rc;
}