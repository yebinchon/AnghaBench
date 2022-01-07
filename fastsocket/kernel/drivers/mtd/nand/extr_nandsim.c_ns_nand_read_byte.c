
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint ;
typedef int u_char ;
struct TYPE_8__ {scalar_t__ status; scalar_t__ count; scalar_t__ num; scalar_t__ row; } ;
struct TYPE_7__ {scalar_t__ pgnum; } ;
struct TYPE_6__ {int* byte; int * word; } ;
struct TYPE_5__ {scalar_t__ cle; scalar_t__ ale; int ce; } ;
struct nandsim {int state; int busw; int* ids; int options; int nxstate; TYPE_4__ regs; TYPE_3__ geom; TYPE_2__ buf; TYPE_1__ lines; } ;
struct nand_chip {scalar_t__ priv; } ;
struct mtd_info {scalar_t__ priv; } ;


 int ACTION_CPY ;
 int BUG () ;
 int NS_DBG (char*,...) ;
 int NS_ERR (char*,int ) ;
 scalar_t__ NS_STATE (int) ;
 int NS_WARN (char*,int ,...) ;
 int OPT_AUTOINCR ;


 int STATE_DATAOUT_MASK ;
 scalar_t__ STATE_DATAOUT_STATUS ;
 scalar_t__ STATE_READY ;
 int cpu_to_le16 (int ) ;
 int do_state_action (struct nandsim*,int ) ;
 int get_state_name (int) ;
 int switch_state (struct nandsim*) ;

__attribute__((used)) static u_char ns_nand_read_byte(struct mtd_info *mtd)
{
        struct nandsim *ns = (struct nandsim *)((struct nand_chip *)mtd->priv)->priv;
 u_char outb = 0x00;


 if (!ns->lines.ce) {
  NS_ERR("read_byte: chip is disabled, return %#x\n", (uint)outb);
  return outb;
 }
 if (ns->lines.ale || ns->lines.cle) {
  NS_ERR("read_byte: ALE or CLE pin is high, return %#x\n", (uint)outb);
  return outb;
 }
 if (!(ns->state & STATE_DATAOUT_MASK)) {
  NS_WARN("read_byte: unexpected data output cycle, state is %s "
   "return %#x\n", get_state_name(ns->state), (uint)outb);
  return outb;
 }


 if (NS_STATE(ns->state) == STATE_DATAOUT_STATUS) {
  NS_DBG("read_byte: return %#x status\n", ns->regs.status);
  return ns->regs.status;
 }


 if (ns->regs.count == ns->regs.num) {
  NS_WARN("read_byte: no more data to output, return %#x\n", (uint)outb);
  return outb;
 }

 switch (NS_STATE(ns->state)) {
  case 129:
   if (ns->busw == 8) {
    outb = ns->buf.byte[ns->regs.count];
    ns->regs.count += 1;
   } else {
    outb = (u_char)cpu_to_le16(ns->buf.word[ns->regs.count >> 1]);
    ns->regs.count += 2;
   }
   break;
  case 128:
   NS_DBG("read_byte: read ID byte %d, total = %d\n", ns->regs.count, ns->regs.num);
   outb = ns->ids[ns->regs.count];
   ns->regs.count += 1;
   break;
  default:
   BUG();
 }

 if (ns->regs.count == ns->regs.num) {
  NS_DBG("read_byte: all bytes were read\n");





  if ((ns->options & OPT_AUTOINCR) && NS_STATE(ns->state) == 129) {
   ns->regs.count = 0;
   if (ns->regs.row + 1 < ns->geom.pgnum)
    ns->regs.row += 1;
   NS_DBG("read_byte: switch to the next page (%#x)\n", ns->regs.row);
   do_state_action(ns, ACTION_CPY);
  }
  else if (NS_STATE(ns->nxstate) == STATE_READY)
   switch_state(ns);

 }

 return outb;
}
