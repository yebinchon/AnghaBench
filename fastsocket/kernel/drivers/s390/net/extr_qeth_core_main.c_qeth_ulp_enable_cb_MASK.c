#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qeth_reply {int dummy; } ;
struct qeth_cmd_buffer {scalar_t__ rc; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {scalar_t__ link_type; int /*<<< orphan*/  type; scalar_t__ max_mtu; scalar_t__ initial_mtu; } ;
struct TYPE_5__ {scalar_t__ in_buf_size; } ;
struct TYPE_4__ {scalar_t__ ulp_filter_r; } ;
struct qeth_card {TYPE_3__ info; TYPE_2__ qdio; TYPE_1__ token; } ;
typedef  scalar_t__ __u8 ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,scalar_t__) ; 
 scalar_t__ QETH_IN_BUF_SIZE_DEFAULT ; 
 scalar_t__ QETH_MPC_DIFINFO_LEN_INDICATES_LINK_TYPE ; 
 int QETH_MPC_TOKEN_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct qeth_card*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct qeth_card *card, struct qeth_reply *reply,
		unsigned long data)
{

	__u16 mtu, framesize;
	__u16 len;
	__u8 link_type;
	struct qeth_cmd_buffer *iob;

	FUNC0(SETUP, 2, "ulpenacb");

	iob = (struct qeth_cmd_buffer *) data;
	FUNC6(&card->token.ulp_filter_r,
	       FUNC3(iob->data),
	       QETH_MPC_TOKEN_LENGTH);
	if (FUNC9(card->info.type)) {
		FUNC6(&framesize, FUNC5(iob->data), 2);
		mtu = FUNC10(framesize);
		if (!mtu) {
			iob->rc = -EINVAL;
			FUNC1(SETUP, 2, "  rc%d", iob->rc);
			return 0;
		}
		card->info.max_mtu = mtu;
		card->info.initial_mtu = mtu;
		card->qdio.in_buf_size = mtu + 2 * PAGE_SIZE;
	} else {
		card->info.initial_mtu = FUNC7(card);
		card->info.max_mtu = FUNC8(card->info.type);
		card->qdio.in_buf_size = QETH_IN_BUF_SIZE_DEFAULT;
	}

	FUNC6(&len, FUNC2(iob->data), 2);
	if (len >= QETH_MPC_DIFINFO_LEN_INDICATES_LINK_TYPE) {
		FUNC6(&link_type,
		       FUNC4(iob->data), 1);
		card->info.link_type = link_type;
	} else
		card->info.link_type = 0;
	FUNC1(SETUP, 2, "link%d", link_type);
	FUNC1(SETUP, 2, "  rc%d", iob->rc);
	return 0;
}