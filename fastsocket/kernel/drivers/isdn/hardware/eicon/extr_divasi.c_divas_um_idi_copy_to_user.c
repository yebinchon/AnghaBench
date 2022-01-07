
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void const*,int) ;

__attribute__((used)) static int
divas_um_idi_copy_to_user(void *os_handle, void *dst, const void *src,
     int length)
{
 memcpy(dst, src, length);
 return (length);
}
