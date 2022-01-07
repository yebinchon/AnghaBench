
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_csr_iterator {int* p; int end; } ;



int fw_csr_iterator_next(struct fw_csr_iterator *ci, int *key, int *value)
{
 *key = *ci->p >> 24;
 *value = *ci->p & 0xffffff;

 return ci->p++ < ci->end;
}
