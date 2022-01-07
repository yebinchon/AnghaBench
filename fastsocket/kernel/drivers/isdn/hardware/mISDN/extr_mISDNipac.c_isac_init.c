
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {long data; void* function; } ;
struct TYPE_4__ {int debug; TYPE_1__ timer; int l1; } ;
struct isac_hw {int mocr; int type; int state; int adf2; int name; TYPE_2__ dch; int * mon_rx; int * mon_tx; } ;


 int DEBUG_HW ;
 int EINVAL ;
 int IPACX__ON ;
 int IPAC_TYPE_ISACX ;
 int * ISACVer ;
 int ISACX_CIR0 ;
 int ISACX_ID ;
 int ISACX_ISTA ;
 int ISACX_ISTAD ;
 int ISACX_MASK ;
 int ISACX_MASKD ;
 int ISACX_MODED ;
 int ISACX_STARD ;
 int ISACX_TR_CONF0 ;
 int ISACX_TR_CONF2 ;
 int ISAC_ADF1 ;
 int ISAC_ADF2 ;
 int ISAC_CIR0 ;
 int ISAC_CMD_RS ;
 int ISAC_EXIR ;
 int ISAC_ISTA ;
 int ISAC_MASK ;
 int ISAC_MODE ;
 int ISAC_RBCH ;
 int ISAC_SPCR ;
 int ISAC_SQXR ;
 int ISAC_STAR ;
 int ISAC_STCR ;
 int ISAC_TIMR ;
 int ReadISAC (struct isac_hw*,int ) ;
 int WriteISAC (struct isac_hw*,int ,int) ;
 int create_l1 (TYPE_2__*,int ) ;
 scalar_t__ dbusy_timer_handler ;
 int init_timer (TYPE_1__*) ;
 int isac_l1cmd ;
 int isac_ph_state_change (struct isac_hw*) ;
 int isac_release (struct isac_hw*) ;
 int ph_command (struct isac_hw*,int ) ;
 int pr_debug (char*,int ,int) ;
 int pr_info (char*,int ,int) ;
 int pr_notice (char*,int ,int,...) ;

__attribute__((used)) static int
isac_init(struct isac_hw *isac)
{
 u8 val;
 int err = 0;

 if (!isac->dch.l1) {
  err = create_l1(&isac->dch, isac_l1cmd);
  if (err)
   return err;
 }
 isac->mon_tx = ((void*)0);
 isac->mon_rx = ((void*)0);
 isac->dch.timer.function = (void *) dbusy_timer_handler;
 isac->dch.timer.data = (long)isac;
 init_timer(&isac->dch.timer);
 isac->mocr = 0xaa;
 if (isac->type & IPAC_TYPE_ISACX) {

  WriteISAC(isac, ISACX_MASK, 0xff);
  val = ReadISAC(isac, ISACX_STARD);
  pr_debug("%s: ISACX STARD %x\n", isac->name, val);
  val = ReadISAC(isac, ISACX_ISTAD);
  pr_debug("%s: ISACX ISTAD %x\n", isac->name, val);
  val = ReadISAC(isac, ISACX_ISTA);
  pr_debug("%s: ISACX ISTA %x\n", isac->name, val);

  WriteISAC(isac, ISACX_TR_CONF0, 0x00);

  WriteISAC(isac, ISACX_TR_CONF2, 0x00);

  WriteISAC(isac, ISACX_MODED, 0xc9);

  val = ReadISAC(isac, ISACX_ID);
  if (isac->dch.debug & DEBUG_HW)
   pr_notice("%s: ISACX Design ID %x\n",
    isac->name, val & 0x3f);
  val = ReadISAC(isac, ISACX_CIR0);
  pr_debug("%s: ISACX CIR0 %02X\n", isac->name, val);
  isac->state = val >> 4;
  isac_ph_state_change(isac);
  ph_command(isac, ISAC_CMD_RS);
  WriteISAC(isac, ISACX_MASK, IPACX__ON);
  WriteISAC(isac, ISACX_MASKD, 0x00);
 } else {
  WriteISAC(isac, ISAC_MASK, 0xff);
  val = ReadISAC(isac, ISAC_STAR);
  pr_debug("%s: ISAC STAR %x\n", isac->name, val);
  val = ReadISAC(isac, ISAC_MODE);
  pr_debug("%s: ISAC MODE %x\n", isac->name, val);
  val = ReadISAC(isac, ISAC_ADF2);
  pr_debug("%s: ISAC ADF2 %x\n", isac->name, val);
  val = ReadISAC(isac, ISAC_ISTA);
  pr_debug("%s: ISAC ISTA %x\n", isac->name, val);
  if (val & 0x01) {
   val = ReadISAC(isac, ISAC_EXIR);
   pr_debug("%s: ISAC EXIR %x\n", isac->name, val);
  }
  val = ReadISAC(isac, ISAC_RBCH);
  if (isac->dch.debug & DEBUG_HW)
   pr_notice("%s: ISAC version (%x): %s\n", isac->name,
    val, ISACVer[(val >> 5) & 3]);
  isac->type |= ((val >> 5) & 3);
  if (!isac->adf2)
   isac->adf2 = 0x80;
  if (!(isac->adf2 & 0x80)) {
   pr_info("%s: only support IOM2 mode but adf2=%02x\n",
    isac->name, isac->adf2);
   isac_release(isac);
   return -EINVAL;
  }
  WriteISAC(isac, ISAC_ADF2, isac->adf2);
  WriteISAC(isac, ISAC_SQXR, 0x2f);
  WriteISAC(isac, ISAC_SPCR, 0x00);
  WriteISAC(isac, ISAC_STCR, 0x70);
  WriteISAC(isac, ISAC_MODE, 0xc9);
  WriteISAC(isac, ISAC_TIMR, 0x00);
  WriteISAC(isac, ISAC_ADF1, 0x00);
  val = ReadISAC(isac, ISAC_CIR0);
  pr_debug("%s: ISAC CIR0 %x\n", isac->name, val);
  isac->state = (val >> 2) & 0xf;
  isac_ph_state_change(isac);
  ph_command(isac, ISAC_CMD_RS);
  WriteISAC(isac, ISAC_MASK, 0);
 }
 return err;
}
