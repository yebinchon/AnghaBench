
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cplbinfo_data {char cplb_type; int switched; int tbl; int mem_control; } ;


 int bfin_read_DMEM_CONTROL () ;
 int bfin_read_IMEM_CONTROL () ;
 int * dcplb_tbl ;
 int first_switched_dcplb ;
 int first_switched_icplb ;
 int * icplb_tbl ;

__attribute__((used)) static void cplbinfo_seq_init(struct cplbinfo_data *cdata, unsigned int cpu)
{
 if (cdata->cplb_type == 'I') {
  cdata->mem_control = bfin_read_IMEM_CONTROL();
  cdata->tbl = icplb_tbl[cpu];
  cdata->switched = first_switched_icplb;
 } else {
  cdata->mem_control = bfin_read_DMEM_CONTROL();
  cdata->tbl = dcplb_tbl[cpu];
  cdata->switched = first_switched_dcplb;
 }
}
