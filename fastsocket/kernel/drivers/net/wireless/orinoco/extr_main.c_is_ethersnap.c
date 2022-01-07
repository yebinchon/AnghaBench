
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int encaps_hdr ;
 scalar_t__ memcmp (int*,int *,int) ;

__attribute__((used)) static inline int is_ethersnap(void *_hdr)
{
 u8 *hdr = _hdr;






 return (memcmp(hdr, &encaps_hdr, 5) == 0)
  && ((hdr[5] == 0x00) || (hdr[5] == 0xf8));
}
