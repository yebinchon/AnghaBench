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
typedef  int u8 ;
typedef  int u16 ;
struct wl3501_card {int esbq_confirm; int /*<<< orphan*/  sig_pwr_mgmt_confirm; int /*<<< orphan*/  sig_get_confirm; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  sig_id ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
#define  WL3501_SIG_ALARM 140 
#define  WL3501_SIG_ASSOC_CONFIRM 139 
#define  WL3501_SIG_AUTH_CONFIRM 138 
#define  WL3501_SIG_DEAUTH_IND 137 
#define  WL3501_SIG_DISASSOC_IND 136 
#define  WL3501_SIG_GET_CONFIRM 135 
#define  WL3501_SIG_JOIN_CONFIRM 134 
#define  WL3501_SIG_MD_CONFIRM 133 
#define  WL3501_SIG_MD_IND 132 
#define  WL3501_SIG_PWR_MGMT_CONFIRM 131 
#define  WL3501_SIG_RESYNC_CONFIRM 130 
#define  WL3501_SIG_SCAN_CONFIRM 129 
#define  WL3501_SIG_START_CONFIRM 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct wl3501_card* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct wl3501_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wl3501_card*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wl3501_card*) ; 
 int /*<<< orphan*/  FUNC6 (struct wl3501_card*) ; 
 int /*<<< orphan*/  FUNC7 (struct wl3501_card*) ; 
 int /*<<< orphan*/  FUNC8 (struct wl3501_card*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct wl3501_card*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,struct wl3501_card*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,struct wl3501_card*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct wl3501_card*) ; 
 int /*<<< orphan*/  FUNC14 (struct wl3501_card*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,struct wl3501_card*,int) ; 

__attribute__((used)) static inline void FUNC16(struct net_device *dev)
{
	int morepkts;
	u16 addr;
	u8 sig_id;
	struct wl3501_card *this = FUNC1(dev);

	FUNC0(3, "entry");
loop:
	morepkts = 0;
	if (!FUNC5(this))
		goto free;
	FUNC9(this, this->esbq_confirm, &addr, sizeof(addr));
	FUNC9(this, addr + 2, &sig_id, sizeof(sig_id));

	switch (sig_id) {
	case WL3501_SIG_DEAUTH_IND:
	case WL3501_SIG_DISASSOC_IND:
	case WL3501_SIG_ALARM:
		FUNC2(dev, this);
		break;
	case WL3501_SIG_MD_CONFIRM:
		FUNC10(dev, this, addr);
		break;
	case WL3501_SIG_MD_IND:
		FUNC11(dev, this, addr);
		break;
	case WL3501_SIG_GET_CONFIRM:
		FUNC8(this, addr,
					     &this->sig_get_confirm,
					     sizeof(this->sig_get_confirm));
		break;
	case WL3501_SIG_PWR_MGMT_CONFIRM:
		FUNC8(this, addr,
					     &this->sig_pwr_mgmt_confirm,
					    sizeof(this->sig_pwr_mgmt_confirm));
		break;
	case WL3501_SIG_START_CONFIRM:
		FUNC15(dev, this, addr);
		break;
	case WL3501_SIG_SCAN_CONFIRM:
		FUNC14(this, addr);
		break;
	case WL3501_SIG_JOIN_CONFIRM:
		FUNC12(dev, addr);
		break;
	case WL3501_SIG_ASSOC_CONFIRM:
		FUNC3(dev, addr);
		break;
	case WL3501_SIG_AUTH_CONFIRM:
		FUNC4(this, addr);
		break;
	case WL3501_SIG_RESYNC_CONFIRM:
		FUNC13(this); /* FIXME: should be resync_confirm */
		break;
	}
	FUNC6(this);
	morepkts = 1;
	/* free request if necessary */
free:
	FUNC7(this);
	if (morepkts)
		goto loop;
}