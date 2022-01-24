#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct TYPE_5__ {scalar_t__ height; scalar_t__ top; } ;
struct TYPE_7__ {TYPE_1__ bounds; } ;
struct bttv_tvnorm {int adelay; int bdelay; int vbipack; int /*<<< orphan*/  v4l2_id; int /*<<< orphan*/  iform; TYPE_3__ cropcap; } ;
struct TYPE_6__ {int type; } ;
struct bttv {unsigned int tvnorm; int resources; TYPE_2__ c; scalar_t__ crop_start; int /*<<< orphan*/ * crop; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT848_ADELAY ; 
 int /*<<< orphan*/  BT848_BDELAY ; 
 int /*<<< orphan*/  BT848_IFORM ; 
 int BT848_IFORM_NORM ; 
 int BT848_IFORM_XTBOTH ; 
 int /*<<< orphan*/  BT848_VBI_PACK_DEL ; 
 int /*<<< orphan*/  BT848_VBI_PACK_SIZE ; 
#define  BTTV_BOARD_VOODOOTV_200 129 
#define  BTTV_BOARD_VOODOOTV_FM 128 
 unsigned int BTTV_TVNORMS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VIDEO_RESOURCES ; 
 int /*<<< orphan*/  FUNC1 (struct bttv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bttv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct bttv*,int /*<<< orphan*/ ) ; 
 struct bttv_tvnorm* bttv_tvnorms ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  s_std ; 

__attribute__((used)) static int
FUNC9(struct bttv *btv, unsigned int norm)
{
	const struct bttv_tvnorm *tvnorm;
	v4l2_std_id id;

	FUNC0(norm >= BTTV_TVNORMS);
	FUNC0(btv->tvnorm >= BTTV_TVNORMS);

	tvnorm = &bttv_tvnorms[norm];

	if (FUNC8(&bttv_tvnorms[btv->tvnorm].cropcap, &tvnorm->cropcap,
		    sizeof (tvnorm->cropcap))) {
		FUNC4(&btv->crop[0], norm);
		btv->crop[1] = btv->crop[0]; /* current = default */

		if (0 == (btv->resources & VIDEO_RESOURCES)) {
			btv->crop_start = tvnorm->cropcap.bounds.top
				+ tvnorm->cropcap.bounds.height;
		}
	}

	btv->tvnorm = norm;

	FUNC6(tvnorm->adelay, BT848_ADELAY);
	FUNC6(tvnorm->bdelay, BT848_BDELAY);
	FUNC2(tvnorm->iform,~(BT848_IFORM_NORM|BT848_IFORM_XTBOTH),
	      BT848_IFORM);
	FUNC6(tvnorm->vbipack, BT848_VBI_PACK_SIZE);
	FUNC6(1, BT848_VBI_PACK_DEL);
	FUNC1(btv);

	switch (btv->c.type) {
	case BTTV_BOARD_VOODOOTV_FM:
	case BTTV_BOARD_VOODOOTV_200:
		FUNC5(btv, FUNC7());
		break;
	}
	id = tvnorm->v4l2_id;
	FUNC3(btv, core, s_std, id);

	return 0;
}