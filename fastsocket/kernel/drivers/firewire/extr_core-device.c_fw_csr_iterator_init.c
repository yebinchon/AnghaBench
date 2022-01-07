
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fw_csr_iterator {int* p; int* end; } ;



void fw_csr_iterator_init(struct fw_csr_iterator *ci, u32 * p)
{
 ci->p = p + 1;
 ci->end = ci->p + (p[0] >> 16);
}
