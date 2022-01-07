
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regType_t ;


 unsigned int GET_ASID (int ) ;
 unsigned int GET_CBEHAVIOR (int ) ;
 unsigned int GET_EPN (int ) ;
 char* GET_PAGE_SIZE (int ) ;
 unsigned int GET_PPN (int ) ;
 char* GET_PROTECTION (int ) ;
 unsigned int GET_SHARED (int ) ;
 unsigned int GET_VALID (int ) ;
 int HOW_TO_READ_TLB_CONTENT ;
 unsigned long TLB_STEP ;
 int getConfigReg (unsigned long) ;
 int printk (char*,...) ;

void print_single_tlb(unsigned long tlb, int single_print)
{
 regType_t pteH;
 regType_t pteL;
 unsigned int valid, shared, asid, epn, cb, ppn;
 char *pSize;
 char *pProt;







 pteH = getConfigReg(tlb);
 valid = GET_VALID(pteH);
 if (single_print)
  printk(HOW_TO_READ_TLB_CONTENT);
 else if (!valid)
  return;

 pteL = getConfigReg(tlb + 1);

 shared = GET_SHARED(pteH);
 asid = GET_ASID(pteH);
 epn = GET_EPN(pteH);
 cb = GET_CBEHAVIOR(pteL);
 pSize = GET_PAGE_SIZE(pteL);
 pProt = GET_PROTECTION(pteL);
 ppn = GET_PPN(pteL);
 printk("[%c%2ld]  0x%08x  0x%08x  %03d   %02x    %02x   %4s    %s\n",
        ((valid) ? ' ' : 'u'), ((tlb & 0x0ffff) / TLB_STEP),
        ppn, epn, asid, shared, cb, pSize, pProt);
}
