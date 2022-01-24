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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int,int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (int) ; 
 scalar_t__ FUNC16 (int) ; 
 scalar_t__ FUNC17 (int) ; 
 scalar_t__ FUNC18 (int) ; 
 scalar_t__ FUNC19 (int) ; 
 scalar_t__ FUNC20 (int) ; 
 scalar_t__ FUNC21 (int) ; 
 scalar_t__ FUNC22 (int) ; 
 scalar_t__ FUNC23 (int) ; 
 scalar_t__ FUNC24 (int) ; 
 scalar_t__ FUNC25 (int) ; 
 scalar_t__ FUNC26 (int) ; 
 scalar_t__ FUNC27 (int,int) ; 
 scalar_t__ FUNC28 (int) ; 
 scalar_t__ FUNC29 (int) ; 
 scalar_t__ FUNC30 (int) ; 
 scalar_t__ FUNC31 (int) ; 
 scalar_t__ FUNC32 (int,int) ; 
 scalar_t__ FUNC33 (int,int) ; 
 scalar_t__ FUNC34 (int,int) ; 
 scalar_t__ FUNC35 (int) ; 
 scalar_t__ FUNC36 (int) ; 
 scalar_t__ FUNC37 (int) ; 
 scalar_t__ FUNC38 (int) ; 
 scalar_t__ FUNC39 (int) ; 
 scalar_t__ FUNC40 (int) ; 
 int FUNC41 (char const*) ; 
 int FUNC42 (char const*,...) ; 
 int FUNC43 (char const*,...) ; 
 int FUNC44 (char const*,...) ; 
 int FUNC45 (char const*) ; 
 int FUNC46 (char const*,...) ; 
 int FUNC47 (char const*,...) ; 
 int FUNC48 (char const*,...) ; 
 int FUNC49 (char const*,...) ; 
 int FUNC50 (char const*,...) ; 
 int FUNC51 (char const*) ; 
 int FUNC52 (char const*,...) ; 
 int FUNC53 (char const*,...) ; 
 int FUNC54 (char const*,...) ; 
 int FUNC55 (char const*,...) ; 
 int FUNC56 (char const*,...) ; 
 int FUNC57 (char const*,...) ; 
 int FUNC58 (char const*) ; 
 int FUNC59 (char const*,...) ; 
 int FUNC60 (char const*,...) ; 
 int FUNC61 (char const*,...) ; 
 int FUNC62 (char const*,...) ; 
 int FUNC63 (char const*,...) ; 
 int FUNC64 (char const*,...) ; 
 int FUNC65 (char const*,...) ; 
 int FUNC66 (char const*) ; 
 int FUNC67 (char const*,...) ; 
 int FUNC68 (char const*,...) ; 
 int FUNC69 (char const*,...) ; 
 int FUNC70 (char const*,...) ; 
 int FUNC71 (char const*) ; 
 int FUNC72 (char const*,...) ; 
 int FUNC73 (char const*,...) ; 
 int FUNC74 (char const*,...) ; 
 int FUNC75 (char const*,...) ; 
 int FUNC76 (char const*,...) ; 
 int FUNC77 (char const*,...) ; 
 int FUNC78 (char const*,...) ; 
 int FUNC79 (char const*,...) ; 
 int FUNC80 (char const*,...) ; 
 int FUNC81 (char const*,...) ; 
 int FUNC82 (char const*,...) ; 
 int FUNC83 (char const*,...) ; 
 int FUNC84 (char const*) ; 
 int FUNC85 (char const*,...) ; 
 int FUNC86 (char const*,...) ; 
 int FUNC87 (char const*,...) ; 
 int FUNC88 (char const*,...) ; 
 int FUNC89 (char const*,...) ; 
 int FUNC90 (char const*,...) ; 
 int FUNC91 (char const*,...) ; 
 int FUNC92 (char const*,...) ; 
 int FUNC93 (char const*,...) ; 
 int FUNC94 (char const*,...) ; 
 int FUNC95 (char const*,...) ; 
 int FUNC96 (char const*,...) ; 
 int FUNC97 (char const*,...) ; 
 int FUNC98 (char const*) ; 
 int FUNC99 (char const*,...) ; 
 int FUNC100 (char const*,...) ; 

__attribute__((used)) static void FUNC101(int module,	/*   [ IN ] DMA Controller unit  (0-1) */
				    int channel,	/*   [ IN ] DMA Channel          (0-7) / -1(all) */
				    int (*fpPrint) (const char *, ...)	/*   [ IN ] Callback to the print function */
    ) {
	int chan;

	(*fpPrint) ("Displaying register content \n\n");
	(*fpPrint) ("Module %d: Interrupt raw transfer              0x%X\n",
		    module, (uint32_t) (FUNC21(module)));
	(*fpPrint) ("Module %d: Interrupt raw block                 0x%X\n",
		    module, (uint32_t) (FUNC17(module)));
	(*fpPrint) ("Module %d: Interrupt raw src transfer          0x%X\n",
		    module, (uint32_t) (FUNC20(module)));
	(*fpPrint) ("Module %d: Interrupt raw dst transfer          0x%X\n",
		    module, (uint32_t) (FUNC18(module)));
	(*fpPrint) ("Module %d: Interrupt raw error                 0x%X\n",
		    module, (uint32_t) (FUNC19(module)));
	(*fpPrint) ("--------------------------------------------------\n");
	(*fpPrint) ("Module %d: Interrupt stat transfer             0x%X\n",
		    module, (uint32_t) (FUNC26(module)));
	(*fpPrint) ("Module %d: Interrupt stat block                0x%X\n",
		    module, (uint32_t) (FUNC22(module)));
	(*fpPrint) ("Module %d: Interrupt stat src transfer         0x%X\n",
		    module, (uint32_t) (FUNC25(module)));
	(*fpPrint) ("Module %d: Interrupt stat dst transfer         0x%X\n",
		    module, (uint32_t) (FUNC23(module)));
	(*fpPrint) ("Module %d: Interrupt stat error                0x%X\n",
		    module, (uint32_t) (FUNC24(module)));
	(*fpPrint) ("--------------------------------------------------\n");
	(*fpPrint) ("Module %d: Interrupt mask transfer             0x%X\n",
		    module, (uint32_t) (FUNC16(module)));
	(*fpPrint) ("Module %d: Interrupt mask block                0x%X\n",
		    module, (uint32_t) (FUNC12(module)));
	(*fpPrint) ("Module %d: Interrupt mask src transfer         0x%X\n",
		    module, (uint32_t) (FUNC15(module)));
	(*fpPrint) ("Module %d: Interrupt mask dst transfer         0x%X\n",
		    module, (uint32_t) (FUNC13(module)));
	(*fpPrint) ("Module %d: Interrupt mask error                0x%X\n",
		    module, (uint32_t) (FUNC14(module)));
	(*fpPrint) ("--------------------------------------------------\n");
	(*fpPrint) ("Module %d: Interrupt clear transfer            0x%X\n",
		    module, (uint32_t) (FUNC11(module)));
	(*fpPrint) ("Module %d: Interrupt clear block               0x%X\n",
		    module, (uint32_t) (FUNC7(module)));
	(*fpPrint) ("Module %d: Interrupt clear src transfer        0x%X\n",
		    module, (uint32_t) (FUNC10(module)));
	(*fpPrint) ("Module %d: Interrupt clear dst transfer        0x%X\n",
		    module, (uint32_t) (FUNC8(module)));
	(*fpPrint) ("Module %d: Interrupt clear error               0x%X\n",
		    module, (uint32_t) (FUNC9(module)));
	(*fpPrint) ("--------------------------------------------------\n");
	(*fpPrint) ("Module %d: SW source req                       0x%X\n",
		    module, (uint32_t) (FUNC39(module)));
	(*fpPrint) ("Module %d: SW dest req                         0x%X\n",
		    module, (uint32_t) (FUNC36(module)));
	(*fpPrint) ("Module %d: SW source signal                    0x%X\n",
		    module, (uint32_t) (FUNC40(module)));
	(*fpPrint) ("Module %d: SW dest signal                      0x%X\n",
		    module, (uint32_t) (FUNC37(module)));
	(*fpPrint) ("Module %d: SW source last                      0x%X\n",
		    module, (uint32_t) (FUNC38(module)));
	(*fpPrint) ("Module %d: SW dest last                        0x%X\n",
		    module, (uint32_t) (FUNC35(module)));
	(*fpPrint) ("--------------------------------------------------\n");
	(*fpPrint) ("Module %d: misc config                         0x%X\n",
		    module, (uint32_t) (FUNC28(module)));
	(*fpPrint) ("Module %d: misc channel enable                 0x%X\n",
		    module, (uint32_t) (FUNC29(module)));
	(*fpPrint) ("Module %d: misc ID                             0x%X\n",
		    module, (uint32_t) (FUNC30(module)));
	(*fpPrint) ("Module %d: misc test                           0x%X\n",
		    module, (uint32_t) (FUNC31(module)));

	if (channel == -1) {
		for (chan = 0; chan < 8; chan++) {
			(*fpPrint)
			    ("--------------------------------------------------\n");
			(*fpPrint)
			    ("Module %d: Channel %d Source                   0x%X\n",
			     module, chan,
			     (uint32_t) (FUNC32(module, chan)));
			(*fpPrint)
			    ("Module %d: Channel %d Destination              0x%X\n",
			     module, chan,
			     (uint32_t) (FUNC4(module, chan)));
			(*fpPrint)
			    ("Module %d: Channel %d LLP                      0x%X\n",
			     module, chan,
			     (uint32_t) (FUNC27(module, chan)));
			(*fpPrint)
			    ("Module %d: Channel %d Control (LO)             0x%X\n",
			     module, chan,
			     (uint32_t) (FUNC3(module, chan)));
			(*fpPrint)
			    ("Module %d: Channel %d Control (HI)             0x%X\n",
			     module, chan,
			     (uint32_t) (FUNC2(module, chan)));
			(*fpPrint)
			    ("Module %d: Channel %d Source Stats             0x%X\n",
			     module, chan,
			     (uint32_t) (FUNC33(module, chan)));
			(*fpPrint)
			    ("Module %d: Channel %d Dest Stats               0x%X\n",
			     module, chan,
			     (uint32_t) (FUNC5(module, chan)));
			(*fpPrint)
			    ("Module %d: Channel %d Source Stats Addr        0x%X\n",
			     module, chan,
			     (uint32_t) (FUNC34(module, chan)));
			(*fpPrint)
			    ("Module %d: Channel %d Dest Stats Addr          0x%X\n",
			     module, chan,
			     (uint32_t) (FUNC6(module, chan)));
			(*fpPrint)
			    ("Module %d: Channel %d Config (LO)              0x%X\n",
			     module, chan,
			     (uint32_t) (FUNC1(module, chan)));
			(*fpPrint)
			    ("Module %d: Channel %d Config (HI)              0x%X\n",
			     module, chan,
			     (uint32_t) (FUNC0(module, chan)));
		}
	} else {
		chan = channel;
		(*fpPrint)
		    ("--------------------------------------------------\n");
		(*fpPrint)
		    ("Module %d: Channel %d Source                   0x%X\n",
		     module, chan, (uint32_t) (FUNC32(module, chan)));
		(*fpPrint)
		    ("Module %d: Channel %d Destination              0x%X\n",
		     module, chan, (uint32_t) (FUNC4(module, chan)));
		(*fpPrint)
		    ("Module %d: Channel %d LLP                      0x%X\n",
		     module, chan, (uint32_t) (FUNC27(module, chan)));
		(*fpPrint)
		    ("Module %d: Channel %d Control (LO)             0x%X\n",
		     module, chan,
		     (uint32_t) (FUNC3(module, chan)));
		(*fpPrint)
		    ("Module %d: Channel %d Control (HI)             0x%X\n",
		     module, chan,
		     (uint32_t) (FUNC2(module, chan)));
		(*fpPrint)
		    ("Module %d: Channel %d Source Stats             0x%X\n",
		     module, chan, (uint32_t) (FUNC33(module, chan)));
		(*fpPrint)
		    ("Module %d: Channel %d Dest Stats               0x%X\n",
		     module, chan, (uint32_t) (FUNC5(module, chan)));
		(*fpPrint)
		    ("Module %d: Channel %d Source Stats Addr        0x%X\n",
		     module, chan,
		     (uint32_t) (FUNC34(module, chan)));
		(*fpPrint)
		    ("Module %d: Channel %d Dest Stats Addr          0x%X\n",
		     module, chan,
		     (uint32_t) (FUNC6(module, chan)));
		(*fpPrint)
		    ("Module %d: Channel %d Config (LO)              0x%X\n",
		     module, chan,
		     (uint32_t) (FUNC1(module, chan)));
		(*fpPrint)
		    ("Module %d: Channel %d Config (HI)              0x%X\n",
		     module, chan,
		     (uint32_t) (FUNC0(module, chan)));
	}
}