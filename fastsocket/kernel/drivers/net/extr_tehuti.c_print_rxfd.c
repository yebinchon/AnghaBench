
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxf_desc {int len; int pa_hi; int pa_lo; int va_lo; int info; } ;


 int DBG (char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void print_rxfd(struct rxf_desc *rxfd)
{
 DBG("=== RxF desc CHIP ORDER/ENDIANESS =============\n"
     "info 0x%x va_lo %u pa_lo 0x%x pa_hi 0x%x len 0x%x\n",
     rxfd->info, rxfd->va_lo, rxfd->pa_lo, rxfd->pa_hi, rxfd->len);
}
