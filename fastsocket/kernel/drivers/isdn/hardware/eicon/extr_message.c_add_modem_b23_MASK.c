#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int word ;
typedef  int /*<<< orphan*/  dlc ;
typedef  int byte ;
struct TYPE_13__ {int manufacturer_features; } ;
struct TYPE_12__ {scalar_t__ length; int /*<<< orphan*/ * info; } ;
struct TYPE_11__ {int B2_prot; int B3_prot; int rx_dma_descriptor; int rx_dma_magic; int call_dir; TYPE_1__* appl; TYPE_9__* adapter; } ;
struct TYPE_10__ {int /*<<< orphan*/  MaxDataLength; } ;
typedef  TYPE_2__ PLCI ;
typedef  TYPE_3__ API_PARSE ;

/* Variables and functions */
 int B1_MODEM_ALL_NEGOTIATE ; 
 int B2_MODEM_EC_COMPRESSION ; 
 int B2_TRANSPARENT ; 
 int B3_MODEM ; 
 int B3_TRANSPARENT ; 
 int CALL_DIR_FORCE_OUTG_NL ; 
 int CALL_DIR_ORIGINATE ; 
 scalar_t__ FUNC0 (TYPE_9__*) ; 
 int DIVA_CAPI_USE_CMA ; 
 int /*<<< orphan*/  DLC ; 
 int DLC_MODEMPROT_DISABLE_COMPRESSION ; 
 int DLC_MODEMPROT_DISABLE_MNP_MNP5 ; 
 int DLC_MODEMPROT_DISABLE_V42_DETECT ; 
 int DLC_MODEMPROT_DISABLE_V42_V42BIS ; 
 int DLC_MODEMPROT_REQUIRE_PROTOCOL ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LLC ; 
 int /*<<< orphan*/  LLI ; 
 int MANUFACTURER_FEATURE_OOB_CHANNEL ; 
 int MANUFACTURER_FEATURE_XONOFF_FLOW_CONTROL ; 
 int MDM_B2_DISABLE_COMP ; 
 int MDM_B2_DISABLE_MNP ; 
 int MDM_B2_DISABLE_TRANS ; 
 int MDM_B2_DISABLE_V42 ; 
 int MDM_B2_DISABLE_V42bis ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int _B_STACK_NOT_SUPPORTED ; 
 int _WRONG_MESSAGE_FORMAT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int*) ; 
 int diva_xdi_extended_features ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static word FUNC8 (PLCI  * plci, API_PARSE* bp_parms)
{
  static byte lli[12] = {1,1};
  static byte llc[3] = {2,0,0};
  static byte dlc[16] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
    API_PARSE mdm_config[2];
  word i;
  word b2_config = 0;

  for(i=0;i<2;i++) mdm_config[i].length = 0;
  for(i=0;i<sizeof(dlc);i++) dlc[i] = 0;

  if (((FUNC1(bp_parms[0].info) == B1_MODEM_ALL_NEGOTIATE)
    && (FUNC1(bp_parms[1].info) != B2_MODEM_EC_COMPRESSION))
   || ((FUNC1(bp_parms[0].info) != B1_MODEM_ALL_NEGOTIATE)
    && (FUNC1(bp_parms[1].info) != B2_TRANSPARENT)))
  {
    return (_B_STACK_NOT_SUPPORTED);
  }
  if ((FUNC1(bp_parms[2].info) != B3_MODEM)
   && (FUNC1(bp_parms[2].info) != B3_TRANSPARENT))
  {
    return (_B_STACK_NOT_SUPPORTED);
  }

  plci->B2_prot = (byte) FUNC1(bp_parms[1].info);
  plci->B3_prot = (byte) FUNC1(bp_parms[2].info);

  if ((FUNC1(bp_parms[1].info) == B2_MODEM_EC_COMPRESSION) && bp_parms[4].length)
  {
    if (FUNC4 (&bp_parms[4].info[1],
                  (word)bp_parms[4].length, "w",
                  mdm_config))
    {
      return (_WRONG_MESSAGE_FORMAT);
    }
    b2_config = FUNC1(mdm_config[0].info);
  }

  /* OK, L2 is modem */

  lli[0] = 1;
  lli[1] = 1;
  if (plci->adapter->manufacturer_features & MANUFACTURER_FEATURE_XONOFF_FLOW_CONTROL)
    lli[1] |= 2;
  if (plci->adapter->manufacturer_features & MANUFACTURER_FEATURE_OOB_CHANNEL)
    lli[1] |= 4;

  if ((lli[1] & 0x02) && (diva_xdi_extended_features & DIVA_CAPI_USE_CMA)) {
    lli[1] |= 0x10;
    if (plci->rx_dma_descriptor <= 0) {
      plci->rx_dma_descriptor=FUNC6(plci,&plci->rx_dma_magic);
      if (plci->rx_dma_descriptor >= 0)
        plci->rx_dma_descriptor++;
    }
    if (plci->rx_dma_descriptor > 0) {
      lli[1] |= 0x40;
      lli[0] = 6;
      lli[2] = (byte)(plci->rx_dma_descriptor - 1);
      lli[3] = (byte)plci->rx_dma_magic;
      lli[4] = (byte)(plci->rx_dma_magic >>  8);
      lli[5] = (byte)(plci->rx_dma_magic >> 16);
      lli[6] = (byte)(plci->rx_dma_magic >> 24);
    }
  }

  if (FUNC0(plci->adapter)) {
    lli[1] |= 0x20;
  }

  llc[1] = (plci->call_dir & (CALL_DIR_ORIGINATE | CALL_DIR_FORCE_OUTG_NL)) ?
    /*V42*/ 10 : /*V42_IN*/ 9;
  llc[2] = 4;                      /* pass L3 always transparent */
  FUNC3(plci, LLI, lli);
  FUNC3(plci, LLC, llc);
  i =  1;
  FUNC2 (&dlc[i], plci->appl->MaxDataLength);
  i += 2;
  if (FUNC1(bp_parms[1].info) == B2_MODEM_EC_COMPRESSION)
  {
    if (bp_parms[4].length)
  {
    FUNC5(1, FUNC7("MDM b2_config=%02x", b2_config));
    dlc[i++] = 3; /* Addr A */
    dlc[i++] = 1; /* Addr B */
    dlc[i++] = 7; /* modulo mode */
    dlc[i++] = 7; /* window size */
    dlc[i++] = 0; /* XID len Lo  */
    dlc[i++] = 0; /* XID len Hi  */

    if (b2_config & MDM_B2_DISABLE_V42bis)
    {
      dlc[i] |= DLC_MODEMPROT_DISABLE_V42_V42BIS;
    }
    if (b2_config & MDM_B2_DISABLE_MNP)
    {
      dlc[i] |= DLC_MODEMPROT_DISABLE_MNP_MNP5;
    }
    if (b2_config & MDM_B2_DISABLE_TRANS)
    {
      dlc[i] |= DLC_MODEMPROT_REQUIRE_PROTOCOL;
    }
    if (b2_config & MDM_B2_DISABLE_V42)
    {
      dlc[i] |= DLC_MODEMPROT_DISABLE_V42_DETECT;
    }
    if (b2_config & MDM_B2_DISABLE_COMP)
    {
      dlc[i] |= DLC_MODEMPROT_DISABLE_COMPRESSION;
    }
    i++;
  }
  }
  else
  {
    dlc[i++] = 3; /* Addr A */
    dlc[i++] = 1; /* Addr B */
    dlc[i++] = 7; /* modulo mode */
    dlc[i++] = 7; /* window size */
    dlc[i++] = 0; /* XID len Lo  */
    dlc[i++] = 0; /* XID len Hi  */
    dlc[i++] = DLC_MODEMPROT_DISABLE_V42_V42BIS |
               DLC_MODEMPROT_DISABLE_MNP_MNP5 |
               DLC_MODEMPROT_DISABLE_V42_DETECT |
               DLC_MODEMPROT_DISABLE_COMPRESSION;
  }
  dlc[0] = (byte)(i - 1);
/* HexDump ("DLC", sizeof(dlc), &dlc[0]); */
  FUNC3(plci, DLC, dlc);
  return (0);
}