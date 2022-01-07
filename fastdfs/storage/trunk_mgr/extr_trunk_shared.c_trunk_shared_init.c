
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base64_init_ex (int *,int ,char,char,char) ;
 int g_fdfs_base64_context ;

void trunk_shared_init()
{
 base64_init_ex(&g_fdfs_base64_context, 0, '-', '_', '.');
}
