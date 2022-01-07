
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tmp ;
struct wl3501_card {scalar_t__ esbq_req_head; } ;


 int wl3501_get_from_wla (struct wl3501_card*,scalar_t__,int*,int) ;

__attribute__((used)) static int wl3501_esbq_req_test(struct wl3501_card *this)
{
 u8 tmp = 0;

 wl3501_get_from_wla(this, this->esbq_req_head + 3, &tmp, sizeof(tmp));
 return tmp & 0x80;
}
