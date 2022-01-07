
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlapi_timer {int dummy; } ;
struct brcms_timer {int dummy; } ;


 int brcms_free_timer (struct brcms_timer*) ;

void wlapi_free_timer(struct wlapi_timer *t)
{
 brcms_free_timer((struct brcms_timer *)t);
}
