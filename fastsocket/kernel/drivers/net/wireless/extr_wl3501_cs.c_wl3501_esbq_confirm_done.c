
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tmp ;
struct wl3501_card {scalar_t__ esbq_confirm; scalar_t__ esbq_confirm_end; scalar_t__ esbq_confirm_start; } ;


 int wl3501_set_to_wla (struct wl3501_card*,scalar_t__,int *,int) ;

__attribute__((used)) static void wl3501_esbq_confirm_done(struct wl3501_card *this)
{
 u8 tmp = 0;

 wl3501_set_to_wla(this, this->esbq_confirm + 3, &tmp, sizeof(tmp));
 this->esbq_confirm += 4;
 if (this->esbq_confirm >= this->esbq_confirm_end)
  this->esbq_confirm = this->esbq_confirm_start;
}
