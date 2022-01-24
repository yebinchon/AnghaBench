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
struct TYPE_2__ {int type; int* mcl_level; scalar_t__ portname_required; int /*<<< orphan*/  guestlan; } ;
struct qeth_card {TYPE_1__ info; } ;
typedef  size_t __u8 ;

/* Variables and functions */
#define  QETH_CARD_TYPE_IQD 131 
#define  QETH_CARD_TYPE_OSD 130 
#define  QETH_CARD_TYPE_OSM 129 
#define  QETH_CARD_TYPE_OSX 128 
 size_t QETH_MCL_LENGTH ; 
 scalar_t__* _ebcasc ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC3 (int*,char*,int,int) ; 

void FUNC4(struct qeth_card *card)
{
	switch (card->info.type) {
	case QETH_CARD_TYPE_OSD:
	case QETH_CARD_TYPE_OSM:
	case QETH_CARD_TYPE_OSX:
		/* VM will use a non-zero first character
		 * to indicate a HiperSockets like reporting
		 * of the level OSA sets the first character to zero
		 * */
		if (!card->info.mcl_level[0]) {
			FUNC3(card->info.mcl_level, "%02x%02x",
				card->info.mcl_level[2],
				card->info.mcl_level[3]);

			card->info.mcl_level[QETH_MCL_LENGTH] = 0;
			break;
		}
		/* fallthrough */
	case QETH_CARD_TYPE_IQD:
		if ((card->info.guestlan) ||
		    (card->info.mcl_level[0] & 0x80)) {
			card->info.mcl_level[0] = (char) _ebcasc[(__u8)
				card->info.mcl_level[0]];
			card->info.mcl_level[1] = (char) _ebcasc[(__u8)
				card->info.mcl_level[1]];
			card->info.mcl_level[2] = (char) _ebcasc[(__u8)
				card->info.mcl_level[2]];
			card->info.mcl_level[3] = (char) _ebcasc[(__u8)
				card->info.mcl_level[3]];
			card->info.mcl_level[QETH_MCL_LENGTH] = 0;
		}
		break;
	default:
		FUNC0(&card->info.mcl_level[0], 0, QETH_MCL_LENGTH + 1);
	}
	if (card->info.portname_required)
		FUNC2(card);
	else
		FUNC1(card);
}