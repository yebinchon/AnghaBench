
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (void*) ;

void brcms_ucode_free_buf(void *p)
{
 kfree(p);
}
