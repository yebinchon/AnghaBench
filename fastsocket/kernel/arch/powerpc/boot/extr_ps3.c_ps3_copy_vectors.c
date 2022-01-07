
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_cache (void*,int) ;
 int memcpy (void*,char*,int) ;

void ps3_copy_vectors(void)
{
 extern char __system_reset_kernel[];

 memcpy((void *)0x100, __system_reset_kernel, 512);
 flush_cache((void *)0x100, 512);
}
