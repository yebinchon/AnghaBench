
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ be32_to_cpu (scalar_t__) ;

void
lpfc_sli_bemem_bcopy(void *srcp, void *destp, uint32_t cnt)
{
 uint32_t *src = srcp;
 uint32_t *dest = destp;
 uint32_t ldata;
 int i;

 for (i = 0; i < (int)cnt; i += sizeof(uint32_t)) {
  ldata = *src;
  ldata = be32_to_cpu(ldata);
  *dest = ldata;
  src++;
  dest++;
 }
}
