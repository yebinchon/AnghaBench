
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bi_record {scalar_t__ tag; } ;


 scalar_t__ BI_VME_TYPE ;

int bvme6000_parse_bootinfo(const struct bi_record *bi)
{
 if (bi->tag == BI_VME_TYPE)
  return 0;
 else
  return 1;
}
