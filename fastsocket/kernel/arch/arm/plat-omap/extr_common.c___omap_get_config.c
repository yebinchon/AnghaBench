
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 void const* get_config (int ,size_t,int,int *) ;

const void *__omap_get_config(u16 tag, size_t len, int nr)
{
        return get_config(tag, len, nr, ((void*)0));
}
