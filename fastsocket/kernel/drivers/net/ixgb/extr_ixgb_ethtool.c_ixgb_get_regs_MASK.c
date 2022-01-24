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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ixgb_hw {int revision_id; int device_id; } ;
struct ixgb_adapter {struct ixgb_hw hw; } ;
struct ethtool_regs {int version; int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIS ; 
 int /*<<< orphan*/  APAE ; 
 int /*<<< orphan*/  ARD ; 
 int /*<<< orphan*/  CTRL0 ; 
 int /*<<< orphan*/  CTRL1 ; 
 int /*<<< orphan*/  EECD ; 
 int /*<<< orphan*/  FCRTH ; 
 int /*<<< orphan*/  FCRTL ; 
 int /*<<< orphan*/  ICR ; 
 int /*<<< orphan*/  ICS ; 
 int /*<<< orphan*/  IMC ; 
 int /*<<< orphan*/  IMS ; 
 int IXGB_ALL_RAR_ENTRIES ; 
 void* FUNC0 (struct ixgb_adapter*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct ixgb_hw*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct ixgb_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MACA ; 
 int /*<<< orphan*/  MFS ; 
 int /*<<< orphan*/  MSCA ; 
 int /*<<< orphan*/  MSRWD ; 
 int /*<<< orphan*/  PAP ; 
 int /*<<< orphan*/  PCSC1 ; 
 int /*<<< orphan*/  PCSC2 ; 
 int /*<<< orphan*/  PCSS1 ; 
 int /*<<< orphan*/  PCSS2 ; 
 int /*<<< orphan*/  RAH ; 
 int /*<<< orphan*/  RAIDC ; 
 int /*<<< orphan*/  RAL ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  RDBAH ; 
 int /*<<< orphan*/  RDBAL ; 
 int /*<<< orphan*/  RDH ; 
 int /*<<< orphan*/  RDLEN ; 
 int /*<<< orphan*/  RDT ; 
 int /*<<< orphan*/  RDTR ; 
 int /*<<< orphan*/  RXCSUM ; 
 int /*<<< orphan*/  RXDCTL ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  TCTL ; 
 int /*<<< orphan*/  TDBAH ; 
 int /*<<< orphan*/  TDBAL ; 
 int /*<<< orphan*/  TDH ; 
 int /*<<< orphan*/  TDLEN ; 
 int /*<<< orphan*/  TDT ; 
 int /*<<< orphan*/  TIDV ; 
 int /*<<< orphan*/  TSPMT ; 
 int /*<<< orphan*/  TXDCTL ; 
 int /*<<< orphan*/  UCCR ; 
 int /*<<< orphan*/  XPCSS ; 
 int /*<<< orphan*/  XPCSTC ; 
 int /*<<< orphan*/  bprch ; 
 int /*<<< orphan*/  bprcl ; 
 int /*<<< orphan*/  bptch ; 
 int /*<<< orphan*/  bptcl ; 
 int /*<<< orphan*/  crcerrs ; 
 int /*<<< orphan*/  dc ; 
 int /*<<< orphan*/  ecbc ; 
 int /*<<< orphan*/  gorch ; 
 int /*<<< orphan*/  gorcl ; 
 int /*<<< orphan*/  gotch ; 
 int /*<<< orphan*/  gotcl ; 
 int /*<<< orphan*/  gprch ; 
 int /*<<< orphan*/  gprcl ; 
 int /*<<< orphan*/  gptch ; 
 int /*<<< orphan*/  gptcl ; 
 int /*<<< orphan*/  ibic ; 
 int /*<<< orphan*/  icbc ; 
 int /*<<< orphan*/  jprch ; 
 int /*<<< orphan*/  jprcl ; 
 int /*<<< orphan*/  jptch ; 
 int /*<<< orphan*/  jptcl ; 
 int /*<<< orphan*/  lfc ; 
 int /*<<< orphan*/  mcfrc ; 
 int /*<<< orphan*/  mcftc ; 
 int /*<<< orphan*/  mpc ; 
 int /*<<< orphan*/  mprch ; 
 int /*<<< orphan*/  mprcl ; 
 int /*<<< orphan*/  mptch ; 
 int /*<<< orphan*/  mptcl ; 
 struct ixgb_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  pfrc ; 
 int /*<<< orphan*/  pftc ; 
 int /*<<< orphan*/  plt64c ; 
 int /*<<< orphan*/  rfc ; 
 int /*<<< orphan*/  rjc ; 
 int /*<<< orphan*/  rlec ; 
 int /*<<< orphan*/  rnbc ; 
 int /*<<< orphan*/  roc ; 
 int /*<<< orphan*/  ruc ; 
 int /*<<< orphan*/  torh ; 
 int /*<<< orphan*/  torl ; 
 int /*<<< orphan*/  toth ; 
 int /*<<< orphan*/  totl ; 
 int /*<<< orphan*/  tprh ; 
 int /*<<< orphan*/  tprl ; 
 int /*<<< orphan*/  tpth ; 
 int /*<<< orphan*/  tptl ; 
 int /*<<< orphan*/  tsctc ; 
 int /*<<< orphan*/  tsctfc ; 
 int /*<<< orphan*/  uprch ; 
 int /*<<< orphan*/  uprcl ; 
 int /*<<< orphan*/  uptch ; 
 int /*<<< orphan*/  uptcl ; 
 int /*<<< orphan*/  vprch ; 
 int /*<<< orphan*/  vprcl ; 
 int /*<<< orphan*/  vptch ; 
 int /*<<< orphan*/  vptcl ; 
 int /*<<< orphan*/  xoffrxc ; 
 int /*<<< orphan*/  xofftxc ; 
 int /*<<< orphan*/  xonrxc ; 
 int /*<<< orphan*/  xontxc ; 

__attribute__((used)) static void
FUNC4(struct net_device *netdev,
		   struct ethtool_regs *regs, void *p)
{
	struct ixgb_adapter *adapter = FUNC3(netdev);
	struct ixgb_hw *hw = &adapter->hw;
	u32 *reg = p;
	u32 *reg_start = reg;
	u8 i;

	/* the 1 (one) below indicates an attempt at versioning, if the
	 * interface in ethtool or the driver changes, this 1 should be
	 * incremented */
	regs->version = (1<<24) | hw->revision_id << 16 | hw->device_id;

	/* General Registers */
	*reg++ = FUNC1(hw, CTRL0);	/*   0 */
	*reg++ = FUNC1(hw, CTRL1);	/*   1 */
	*reg++ = FUNC1(hw, STATUS);	/*   2 */
	*reg++ = FUNC1(hw, EECD);	/*   3 */
	*reg++ = FUNC1(hw, MFS);	/*   4 */

	/* Interrupt */
	*reg++ = FUNC1(hw, ICR);	/*   5 */
	*reg++ = FUNC1(hw, ICS);	/*   6 */
	*reg++ = FUNC1(hw, IMS);	/*   7 */
	*reg++ = FUNC1(hw, IMC);	/*   8 */

	/* Receive */
	*reg++ = FUNC1(hw, RCTL);	/*   9 */
	*reg++ = FUNC1(hw, FCRTL);	/*  10 */
	*reg++ = FUNC1(hw, FCRTH);	/*  11 */
	*reg++ = FUNC1(hw, RDBAL);	/*  12 */
	*reg++ = FUNC1(hw, RDBAH);	/*  13 */
	*reg++ = FUNC1(hw, RDLEN);	/*  14 */
	*reg++ = FUNC1(hw, RDH);	/*  15 */
	*reg++ = FUNC1(hw, RDT);	/*  16 */
	*reg++ = FUNC1(hw, RDTR);	/*  17 */
	*reg++ = FUNC1(hw, RXDCTL);	/*  18 */
	*reg++ = FUNC1(hw, RAIDC);	/*  19 */
	*reg++ = FUNC1(hw, RXCSUM);	/*  20 */

	/* there are 16 RAR entries in hardware, we only use 3 */
	for (i = 0; i < IXGB_ALL_RAR_ENTRIES; i++) {
		*reg++ = FUNC2(hw, RAL, (i << 1)); /*21,...,51 */
		*reg++ = FUNC2(hw, RAH, (i << 1)); /*22,...,52 */
	}

	/* Transmit */
	*reg++ = FUNC1(hw, TCTL);	/*  53 */
	*reg++ = FUNC1(hw, TDBAL);	/*  54 */
	*reg++ = FUNC1(hw, TDBAH);	/*  55 */
	*reg++ = FUNC1(hw, TDLEN);	/*  56 */
	*reg++ = FUNC1(hw, TDH);	/*  57 */
	*reg++ = FUNC1(hw, TDT);	/*  58 */
	*reg++ = FUNC1(hw, TIDV);	/*  59 */
	*reg++ = FUNC1(hw, TXDCTL);	/*  60 */
	*reg++ = FUNC1(hw, TSPMT);	/*  61 */
	*reg++ = FUNC1(hw, PAP);	/*  62 */

	/* Physical */
	*reg++ = FUNC1(hw, PCSC1);	/*  63 */
	*reg++ = FUNC1(hw, PCSC2);	/*  64 */
	*reg++ = FUNC1(hw, PCSS1);	/*  65 */
	*reg++ = FUNC1(hw, PCSS2);	/*  66 */
	*reg++ = FUNC1(hw, XPCSS);	/*  67 */
	*reg++ = FUNC1(hw, UCCR);	/*  68 */
	*reg++ = FUNC1(hw, XPCSTC);	/*  69 */
	*reg++ = FUNC1(hw, MACA);	/*  70 */
	*reg++ = FUNC1(hw, APAE);	/*  71 */
	*reg++ = FUNC1(hw, ARD);	/*  72 */
	*reg++ = FUNC1(hw, AIS);	/*  73 */
	*reg++ = FUNC1(hw, MSCA);	/*  74 */
	*reg++ = FUNC1(hw, MSRWD);	/*  75 */

	/* Statistics */
	*reg++ = FUNC0(adapter, tprl);	/*  76 */
	*reg++ = FUNC0(adapter, tprh);	/*  77 */
	*reg++ = FUNC0(adapter, gprcl);	/*  78 */
	*reg++ = FUNC0(adapter, gprch);	/*  79 */
	*reg++ = FUNC0(adapter, bprcl);	/*  80 */
	*reg++ = FUNC0(adapter, bprch);	/*  81 */
	*reg++ = FUNC0(adapter, mprcl);	/*  82 */
	*reg++ = FUNC0(adapter, mprch);	/*  83 */
	*reg++ = FUNC0(adapter, uprcl);	/*  84 */
	*reg++ = FUNC0(adapter, uprch);	/*  85 */
	*reg++ = FUNC0(adapter, vprcl);	/*  86 */
	*reg++ = FUNC0(adapter, vprch);	/*  87 */
	*reg++ = FUNC0(adapter, jprcl);	/*  88 */
	*reg++ = FUNC0(adapter, jprch);	/*  89 */
	*reg++ = FUNC0(adapter, gorcl);	/*  90 */
	*reg++ = FUNC0(adapter, gorch);	/*  91 */
	*reg++ = FUNC0(adapter, torl);	/*  92 */
	*reg++ = FUNC0(adapter, torh);	/*  93 */
	*reg++ = FUNC0(adapter, rnbc);	/*  94 */
	*reg++ = FUNC0(adapter, ruc);	/*  95 */
	*reg++ = FUNC0(adapter, roc);	/*  96 */
	*reg++ = FUNC0(adapter, rlec);	/*  97 */
	*reg++ = FUNC0(adapter, crcerrs);	/*  98 */
	*reg++ = FUNC0(adapter, icbc);	/*  99 */
	*reg++ = FUNC0(adapter, ecbc);	/* 100 */
	*reg++ = FUNC0(adapter, mpc);	/* 101 */
	*reg++ = FUNC0(adapter, tptl);	/* 102 */
	*reg++ = FUNC0(adapter, tpth);	/* 103 */
	*reg++ = FUNC0(adapter, gptcl);	/* 104 */
	*reg++ = FUNC0(adapter, gptch);	/* 105 */
	*reg++ = FUNC0(adapter, bptcl);	/* 106 */
	*reg++ = FUNC0(adapter, bptch);	/* 107 */
	*reg++ = FUNC0(adapter, mptcl);	/* 108 */
	*reg++ = FUNC0(adapter, mptch);	/* 109 */
	*reg++ = FUNC0(adapter, uptcl);	/* 110 */
	*reg++ = FUNC0(adapter, uptch);	/* 111 */
	*reg++ = FUNC0(adapter, vptcl);	/* 112 */
	*reg++ = FUNC0(adapter, vptch);	/* 113 */
	*reg++ = FUNC0(adapter, jptcl);	/* 114 */
	*reg++ = FUNC0(adapter, jptch);	/* 115 */
	*reg++ = FUNC0(adapter, gotcl);	/* 116 */
	*reg++ = FUNC0(adapter, gotch);	/* 117 */
	*reg++ = FUNC0(adapter, totl);	/* 118 */
	*reg++ = FUNC0(adapter, toth);	/* 119 */
	*reg++ = FUNC0(adapter, dc);	/* 120 */
	*reg++ = FUNC0(adapter, plt64c);	/* 121 */
	*reg++ = FUNC0(adapter, tsctc);	/* 122 */
	*reg++ = FUNC0(adapter, tsctfc);	/* 123 */
	*reg++ = FUNC0(adapter, ibic);	/* 124 */
	*reg++ = FUNC0(adapter, rfc);	/* 125 */
	*reg++ = FUNC0(adapter, lfc);	/* 126 */
	*reg++ = FUNC0(adapter, pfrc);	/* 127 */
	*reg++ = FUNC0(adapter, pftc);	/* 128 */
	*reg++ = FUNC0(adapter, mcfrc);	/* 129 */
	*reg++ = FUNC0(adapter, mcftc);	/* 130 */
	*reg++ = FUNC0(adapter, xonrxc);	/* 131 */
	*reg++ = FUNC0(adapter, xontxc);	/* 132 */
	*reg++ = FUNC0(adapter, xoffrxc);	/* 133 */
	*reg++ = FUNC0(adapter, xofftxc);	/* 134 */
	*reg++ = FUNC0(adapter, rjc);	/* 135 */

	regs->len = (reg - reg_start) * sizeof(u32);
}