#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {char nr; int state; int /*<<< orphan*/  Flags; } ;
struct hscx_hw {int slot; TYPE_1__ bch; TYPE_2__* ip; } ;
struct TYPE_4__ {int type; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOPROTOOPT ; 
 int /*<<< orphan*/  FLG_HDLC ; 
 int /*<<< orphan*/  FLG_TRANSPARENT ; 
 int IPACX_B_ON ; 
 int /*<<< orphan*/  IPACX_EXMB ; 
 int /*<<< orphan*/  IPACX_MASKB ; 
 int /*<<< orphan*/  IPACX_MODEB ; 
 int /*<<< orphan*/  IPAC_CCR1 ; 
 int /*<<< orphan*/  IPAC_CCR2 ; 
 int /*<<< orphan*/  IPAC_MASKB ; 
 int /*<<< orphan*/  IPAC_MODEB ; 
 int /*<<< orphan*/  IPAC_RCCR ; 
 int /*<<< orphan*/  IPAC_TSAR ; 
 int /*<<< orphan*/  IPAC_TSAX ; 
 int IPAC_TYPE_HSCX ; 
 int IPAC_TYPE_IPAC ; 
 int IPAC_TYPE_IPACX ; 
 int /*<<< orphan*/  IPAC_XCCR ; 
 int /*<<< orphan*/  ISACX_BCHA_CR ; 
 int /*<<< orphan*/  ISACX_BCHA_TSDP_BC1 ; 
 int /*<<< orphan*/  ISACX_BCHB_CR ; 
 int /*<<< orphan*/  ISACX_BCHB_TSDP_BC1 ; 
#define  ISDN_P_B_HDLC 130 
#define  ISDN_P_B_RAW 129 
#define  ISDN_P_NONE 128 
 int /*<<< orphan*/  FUNC0 (struct hscx_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hscx_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char,int,int,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct hscx_hw *hscx, u32 bprotocol)
{
	FUNC3("%s: HSCX %c protocol %x-->%x ch %d\n", hscx->ip->name,
		'@' + hscx->bch.nr, hscx->bch.state, bprotocol, hscx->bch.nr);
	if (hscx->ip->type & IPAC_TYPE_IPACX) {
		if (hscx->bch.nr & 1) { /* B1 and ICA */
			FUNC1(hscx->ip, ISACX_BCHA_TSDP_BC1, 0x80);
			FUNC1(hscx->ip, ISACX_BCHA_CR, 0x88);
		} else { /* B2 and ICB */
			FUNC1(hscx->ip, ISACX_BCHB_TSDP_BC1, 0x81);
			FUNC1(hscx->ip, ISACX_BCHB_CR, 0x88);
		}
		switch (bprotocol) {
		case ISDN_P_NONE: /* init */
			FUNC0(hscx, IPACX_MODEB, 0xC0);	/* rec off */
			FUNC0(hscx, IPACX_EXMB,  0x30);	/* std adj. */
			FUNC0(hscx, IPACX_MASKB, 0xFF);	/* ints off */
			FUNC2(hscx, 0x41);
			FUNC5(FLG_HDLC, &hscx->bch.Flags);
			FUNC5(FLG_TRANSPARENT, &hscx->bch.Flags);
			break;
		case ISDN_P_B_RAW:
			FUNC0(hscx, IPACX_MODEB, 0x88);	/* ex trans */
			FUNC0(hscx, IPACX_EXMB,  0x00);	/* trans */
			FUNC2(hscx, 0x41);
			FUNC0(hscx, IPACX_MASKB, IPACX_B_ON);
			FUNC6(FLG_TRANSPARENT, &hscx->bch.Flags);
			break;
		case ISDN_P_B_HDLC:
			FUNC0(hscx, IPACX_MODEB, 0xC0);	/* trans */
			FUNC0(hscx, IPACX_EXMB,  0x00);	/* hdlc,crc */
			FUNC2(hscx, 0x41);
			FUNC0(hscx, IPACX_MASKB, IPACX_B_ON);
			FUNC6(FLG_HDLC, &hscx->bch.Flags);
			break;
		default:
			FUNC4("%s: protocol not known %x\n", hscx->ip->name,
				bprotocol);
			return -ENOPROTOOPT;
		}
	} else if (hscx->ip->type & IPAC_TYPE_IPAC) { /* IPAC */
		FUNC0(hscx, IPAC_CCR1, 0x82);
		FUNC0(hscx, IPAC_CCR2, 0x30);
		FUNC0(hscx, IPAC_XCCR, 0x07);
		FUNC0(hscx, IPAC_RCCR, 0x07);
		FUNC0(hscx, IPAC_TSAX, hscx->slot);
		FUNC0(hscx, IPAC_TSAR, hscx->slot);
		switch (bprotocol) {
		case ISDN_P_NONE:
			FUNC0(hscx, IPAC_TSAX, 0x1F);
			FUNC0(hscx, IPAC_TSAR, 0x1F);
			FUNC0(hscx, IPAC_MODEB, 0x84);
			FUNC0(hscx, IPAC_CCR1, 0x82);
			FUNC0(hscx, IPAC_MASKB, 0xFF);	/* ints off */
			FUNC5(FLG_HDLC, &hscx->bch.Flags);
			FUNC5(FLG_TRANSPARENT, &hscx->bch.Flags);
			break;
		case ISDN_P_B_RAW:
			FUNC0(hscx, IPAC_MODEB, 0xe4);	/* ex trans */
			FUNC0(hscx, IPAC_CCR1, 0x82);
			FUNC2(hscx, 0x41);
			FUNC0(hscx, IPAC_MASKB, 0);
			FUNC6(FLG_TRANSPARENT, &hscx->bch.Flags);
			break;
		case ISDN_P_B_HDLC:
			FUNC0(hscx, IPAC_MODEB, 0x8c);
			FUNC0(hscx, IPAC_CCR1, 0x8a);
			FUNC2(hscx, 0x41);
			FUNC0(hscx, IPAC_MASKB, 0);
			FUNC6(FLG_HDLC, &hscx->bch.Flags);
			break;
		default:
			FUNC4("%s: protocol not known %x\n", hscx->ip->name,
				bprotocol);
			return -ENOPROTOOPT;
		}
	} else if (hscx->ip->type & IPAC_TYPE_HSCX) { /* HSCX */
		FUNC0(hscx, IPAC_CCR1, 0x85);
		FUNC0(hscx, IPAC_CCR2, 0x30);
		FUNC0(hscx, IPAC_XCCR, 0x07);
		FUNC0(hscx, IPAC_RCCR, 0x07);
		FUNC0(hscx, IPAC_TSAX, hscx->slot);
		FUNC0(hscx, IPAC_TSAR, hscx->slot);
		switch (bprotocol) {
		case ISDN_P_NONE:
			FUNC0(hscx, IPAC_TSAX, 0x1F);
			FUNC0(hscx, IPAC_TSAR, 0x1F);
			FUNC0(hscx, IPAC_MODEB, 0x84);
			FUNC0(hscx, IPAC_CCR1, 0x85);
			FUNC0(hscx, IPAC_MASKB, 0xFF);	/* ints off */
			FUNC5(FLG_HDLC, &hscx->bch.Flags);
			FUNC5(FLG_TRANSPARENT, &hscx->bch.Flags);
			break;
		case ISDN_P_B_RAW:
			FUNC0(hscx, IPAC_MODEB, 0xe4);	/* ex trans */
			FUNC0(hscx, IPAC_CCR1, 0x85);
			FUNC2(hscx, 0x41);
			FUNC0(hscx, IPAC_MASKB, 0);
			FUNC6(FLG_TRANSPARENT, &hscx->bch.Flags);
			break;
		case ISDN_P_B_HDLC:
			FUNC0(hscx, IPAC_MODEB, 0x8c);
			FUNC0(hscx, IPAC_CCR1, 0x8d);
			FUNC2(hscx, 0x41);
			FUNC0(hscx, IPAC_MASKB, 0);
			FUNC6(FLG_HDLC, &hscx->bch.Flags);
			break;
		default:
			FUNC4("%s: protocol not known %x\n", hscx->ip->name,
				bprotocol);
			return -ENOPROTOOPT;
		}
	} else
		return -EINVAL;
	hscx->bch.state = bprotocol;
	return 0;
}