
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ pgnum; int pgszoob; int pgsz; unsigned int pgsec; int pgaddrbytes; int secaddrbytes; unsigned int secshift; unsigned int pgshift; int secsz; } ;
struct TYPE_5__ {scalar_t__ row; int column; int off; int count; } ;
struct TYPE_4__ {int wp; } ;
struct nandsim {int busw; int options; TYPE_3__ geom; TYPE_2__ regs; TYPE_1__ lines; } ;




 int ACTION_MASK ;




 int NS_DBG (char*,...) ;
 int NS_ERR (char*,...) ;
 int NS_LOG (char*,unsigned int) ;
 int NS_MDELAY (int ) ;
 int NS_RAW_OFFSET (struct nandsim*) ;
 int NS_UDELAY (int) ;
 int NS_WARN (char*,...) ;
 int OPT_PAGE512_8BIT ;
 int access_delay ;
 int erase_block_wear ;
 int erase_delay ;
 int erase_error (unsigned int) ;
 int erase_sector (struct nandsim*) ;
 int input_cycle ;
 int output_cycle ;
 int prog_page (struct nandsim*,int) ;
 int programm_delay ;
 int read_page (struct nandsim*,int) ;
 int update_wear (unsigned int) ;
 int write_error (unsigned int) ;

__attribute__((used)) static int do_state_action(struct nandsim *ns, uint32_t action)
{
 int num;
 int busdiv = ns->busw == 8 ? 1 : 2;
 unsigned int erase_block_no, page_no;

 action &= ACTION_MASK;


 if (action != 129 && ns->regs.row >= ns->geom.pgnum) {
  NS_WARN("do_state_action: wrong page number (%#x)\n", ns->regs.row);
  return -1;
 }

 switch (action) {

 case 133:





  if (ns->regs.column >= (ns->geom.pgszoob - ns->regs.off)) {
   NS_ERR("do_state_action: column number is too large\n");
   break;
  }
  num = ns->geom.pgszoob - ns->regs.off - ns->regs.column;
  read_page(ns, num);

  NS_DBG("do_state_action: (ACTION_CPY:) copy %d bytes to int buf, raw offset %d\n",
   num, NS_RAW_OFFSET(ns) + ns->regs.off);

  if (ns->regs.off == 0)
   NS_LOG("read page %d\n", ns->regs.row);
  else if (ns->regs.off < ns->geom.pgsz)
   NS_LOG("read page %d (second half)\n", ns->regs.row);
  else
   NS_LOG("read OOB of page %d\n", ns->regs.row);

  NS_UDELAY(access_delay);
  NS_UDELAY(input_cycle * ns->geom.pgsz / 1000 / busdiv);

  break;

 case 129:




  if (ns->lines.wp) {
   NS_ERR("do_state_action: device is write-protected, ignore sector erase\n");
   return -1;
  }

  if (ns->regs.row >= ns->geom.pgnum - ns->geom.pgsec
   || (ns->regs.row & ~(ns->geom.secsz - 1))) {
   NS_ERR("do_state_action: wrong sector address (%#x)\n", ns->regs.row);
   return -1;
  }

  ns->regs.row = (ns->regs.row <<
    8 * (ns->geom.pgaddrbytes - ns->geom.secaddrbytes)) | ns->regs.column;
  ns->regs.column = 0;

  erase_block_no = ns->regs.row >> (ns->geom.secshift - ns->geom.pgshift);

  NS_DBG("do_state_action: erase sector at address %#x, off = %d\n",
    ns->regs.row, NS_RAW_OFFSET(ns));
  NS_LOG("erase sector %u\n", erase_block_no);

  erase_sector(ns);

  NS_MDELAY(erase_delay);

  if (erase_block_wear)
   update_wear(erase_block_no);

  if (erase_error(erase_block_no)) {
   NS_WARN("simulating erase failure in erase block %u\n", erase_block_no);
   return -1;
  }

  break;

 case 130:




  if (ns->lines.wp) {
   NS_WARN("do_state_action: device is write-protected, programm\n");
   return -1;
  }

  num = ns->geom.pgszoob - ns->regs.off - ns->regs.column;
  if (num != ns->regs.count) {
   NS_ERR("do_state_action: too few bytes were input (%d instead of %d)\n",
     ns->regs.count, num);
   return -1;
  }

  if (prog_page(ns, num) == -1)
   return -1;

  page_no = ns->regs.row;

  NS_DBG("do_state_action: copy %d bytes from int buf to (%#x, %#x), raw off = %d\n",
   num, ns->regs.row, ns->regs.column, NS_RAW_OFFSET(ns) + ns->regs.off);
  NS_LOG("programm page %d\n", ns->regs.row);

  NS_UDELAY(programm_delay);
  NS_UDELAY(output_cycle * ns->geom.pgsz / 1000 / busdiv);

  if (write_error(page_no)) {
   NS_WARN("simulating write failure in page %u\n", page_no);
   return -1;
  }

  break;

 case 128:
  NS_DBG("do_state_action: set internal offset to 0\n");
  ns->regs.off = 0;
  break;

 case 132:
  if (!(ns->options & OPT_PAGE512_8BIT)) {
   NS_ERR("do_state_action: BUG! can't skip half of page for non-512"
    "byte page size 8x chips\n");
   return -1;
  }
  NS_DBG("do_state_action: set internal offset to %d\n", ns->geom.pgsz/2);
  ns->regs.off = ns->geom.pgsz/2;
  break;

 case 131:
  NS_DBG("do_state_action: set internal offset to %d\n", ns->geom.pgsz);
  ns->regs.off = ns->geom.pgsz;
  break;

 default:
  NS_DBG("do_state_action: BUG! unknown action\n");
 }

 return 0;
}
