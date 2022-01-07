
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct wl1271 {scalar_t__ fwlog_size; scalar_t__ fwlog; } ;


 scalar_t__ PAGE_SIZE ;
 int memcpy (scalar_t__,size_t*,size_t) ;
 size_t min (size_t,size_t) ;

size_t wl12xx_copy_fwlog(struct wl1271 *wl, u8 *memblock, size_t maxlen)
{
 size_t len = 0;


 while (len < maxlen) {
  if (memblock[len] == 0)
   break;
  if (len + memblock[len] + 1 > maxlen)
   break;
  len += memblock[len] + 1;
 }


 len = min(len, (size_t)(PAGE_SIZE - wl->fwlog_size));


 memcpy(wl->fwlog + wl->fwlog_size, memblock, len);
 wl->fwlog_size += len;

 return len;
}
