
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PI_ERR_ST0_ADDR_MASK ;
 int PI_ERR_ST0_ADDR_SHFT ;
 unsigned long PI_ERR_ST0_CMD_MASK ;
 unsigned long PI_ERR_ST0_CMD_SHFT ;
 unsigned long PI_ERR_ST0_OVERRUN_MASK ;
 unsigned long PI_ERR_ST0_REQNUM_MASK ;
 unsigned long PI_ERR_ST0_REQNUM_SHFT ;
 unsigned long PI_ERR_ST0_SUPPL_MASK ;
 unsigned long PI_ERR_ST0_SUPPL_SHFT ;
 unsigned long PI_ERR_ST0_TYPE_MASK ;
 unsigned long PI_ERR_ST0_TYPE_SHFT ;
 unsigned long PI_ERR_ST0_VALID_MASK ;
 unsigned long PI_ERR_ST1_WRBRRB_MASK ;
 int printk (char*,...) ;

__attribute__((used)) static void dump_hub_information(unsigned long errst0, unsigned long errst1)
{
 static char *err_type[2][8] = {
  { ((void*)0), "Uncached Partial Read PRERR", "DERR", "Read Timeout",
    ((void*)0), ((void*)0), ((void*)0), ((void*)0) },
  { "WERR", "Uncached Partial Write", "PWERR", "Write Timeout",
    ((void*)0), ((void*)0), ((void*)0), ((void*)0) }
 };
 int wrb = errst1 & PI_ERR_ST1_WRBRRB_MASK;

 if (!(errst0 & PI_ERR_ST0_VALID_MASK)) {
  printk("Hub does not contain valid error information\n");
  return;
 }


 printk("Hub has valid error information:\n");
 if (errst0 & PI_ERR_ST0_OVERRUN_MASK)
  printk("Overrun is set.  Error stack may contain additional "
         "information.\n");
 printk("Hub error address is %08lx\n",
        (errst0 & PI_ERR_ST0_ADDR_MASK) >> (PI_ERR_ST0_ADDR_SHFT - 3));
 printk("Incoming message command 0x%lx\n",
        (errst0 & PI_ERR_ST0_CMD_MASK) >> PI_ERR_ST0_CMD_SHFT);
 printk("Supplemental field of incoming message is 0x%lx\n",
        (errst0 & PI_ERR_ST0_SUPPL_MASK) >> PI_ERR_ST0_SUPPL_SHFT);
 printk("T5 Rn (for RRB only) is 0x%lx\n",
        (errst0 & PI_ERR_ST0_REQNUM_MASK) >> PI_ERR_ST0_REQNUM_SHFT);
 printk("Error type is %s\n", err_type[wrb]
        [(errst0 & PI_ERR_ST0_TYPE_MASK) >> PI_ERR_ST0_TYPE_SHFT]
  ? : "invalid");
}
