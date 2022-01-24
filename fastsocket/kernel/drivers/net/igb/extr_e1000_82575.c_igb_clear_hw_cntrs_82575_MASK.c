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
struct TYPE_2__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_1__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_ALGNERRC ; 
 int /*<<< orphan*/  E1000_CBRMPC ; 
 int /*<<< orphan*/  E1000_CBTMPC ; 
 int /*<<< orphan*/  E1000_CEXTERR ; 
 int /*<<< orphan*/  E1000_HGORCH ; 
 int /*<<< orphan*/  E1000_HGORCL ; 
 int /*<<< orphan*/  E1000_HGOTCH ; 
 int /*<<< orphan*/  E1000_HGOTCL ; 
 int /*<<< orphan*/  E1000_HGPTC ; 
 int /*<<< orphan*/  E1000_HTCBDPC ; 
 int /*<<< orphan*/  E1000_HTDPMC ; 
 int /*<<< orphan*/  E1000_IAC ; 
 int /*<<< orphan*/  E1000_ICRXATC ; 
 int /*<<< orphan*/  E1000_ICRXDMTC ; 
 int /*<<< orphan*/  E1000_ICRXOC ; 
 int /*<<< orphan*/  E1000_ICRXPTC ; 
 int /*<<< orphan*/  E1000_ICTXATC ; 
 int /*<<< orphan*/  E1000_ICTXPTC ; 
 int /*<<< orphan*/  E1000_ICTXQEC ; 
 int /*<<< orphan*/  E1000_ICTXQMTC ; 
 int /*<<< orphan*/  E1000_LENERRS ; 
 int /*<<< orphan*/  E1000_MGTPDC ; 
 int /*<<< orphan*/  E1000_MGTPRC ; 
 int /*<<< orphan*/  E1000_MGTPTC ; 
 int /*<<< orphan*/  E1000_PRC1023 ; 
 int /*<<< orphan*/  E1000_PRC127 ; 
 int /*<<< orphan*/  E1000_PRC1522 ; 
 int /*<<< orphan*/  E1000_PRC255 ; 
 int /*<<< orphan*/  E1000_PRC511 ; 
 int /*<<< orphan*/  E1000_PRC64 ; 
 int /*<<< orphan*/  E1000_PTC1023 ; 
 int /*<<< orphan*/  E1000_PTC127 ; 
 int /*<<< orphan*/  E1000_PTC1522 ; 
 int /*<<< orphan*/  E1000_PTC255 ; 
 int /*<<< orphan*/  E1000_PTC511 ; 
 int /*<<< orphan*/  E1000_PTC64 ; 
 int /*<<< orphan*/  E1000_RPTHC ; 
 int /*<<< orphan*/  E1000_RXERRC ; 
 int /*<<< orphan*/  E1000_SCVPC ; 
 int /*<<< orphan*/  E1000_TNCRS ; 
 int /*<<< orphan*/  E1000_TSCTC ; 
 int /*<<< orphan*/  E1000_TSCTFC ; 
 scalar_t__ e1000_media_type_internal_serdes ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*) ; 
 scalar_t__ FUNC1 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct e1000_hw *hw)
{
	FUNC0(hw);

	FUNC2(E1000_PRC64);
	FUNC2(E1000_PRC127);
	FUNC2(E1000_PRC255);
	FUNC2(E1000_PRC511);
	FUNC2(E1000_PRC1023);
	FUNC2(E1000_PRC1522);
	FUNC2(E1000_PTC64);
	FUNC2(E1000_PTC127);
	FUNC2(E1000_PTC255);
	FUNC2(E1000_PTC511);
	FUNC2(E1000_PTC1023);
	FUNC2(E1000_PTC1522);

	FUNC2(E1000_ALGNERRC);
	FUNC2(E1000_RXERRC);
	FUNC2(E1000_TNCRS);
	FUNC2(E1000_CEXTERR);
	FUNC2(E1000_TSCTC);
	FUNC2(E1000_TSCTFC);

	FUNC2(E1000_MGTPRC);
	FUNC2(E1000_MGTPDC);
	FUNC2(E1000_MGTPTC);

	FUNC2(E1000_IAC);
	FUNC2(E1000_ICRXOC);

	FUNC2(E1000_ICRXPTC);
	FUNC2(E1000_ICRXATC);
	FUNC2(E1000_ICTXPTC);
	FUNC2(E1000_ICTXATC);
	FUNC2(E1000_ICTXQEC);
	FUNC2(E1000_ICTXQMTC);
	FUNC2(E1000_ICRXDMTC);

	FUNC2(E1000_CBTMPC);
	FUNC2(E1000_HTDPMC);
	FUNC2(E1000_CBRMPC);
	FUNC2(E1000_RPTHC);
	FUNC2(E1000_HGPTC);
	FUNC2(E1000_HTCBDPC);
	FUNC2(E1000_HGORCL);
	FUNC2(E1000_HGORCH);
	FUNC2(E1000_HGOTCL);
	FUNC2(E1000_HGOTCH);
	FUNC2(E1000_LENERRS);

	/* This register should not be read in copper configurations */
	if (hw->phy.media_type == e1000_media_type_internal_serdes ||
	    FUNC1(hw))
		FUNC2(E1000_SCVPC);
}