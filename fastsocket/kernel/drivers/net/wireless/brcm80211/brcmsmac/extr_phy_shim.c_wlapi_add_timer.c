
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct wlapi_timer {int dummy; } ;
struct brcms_timer {int dummy; } ;


 int brcms_add_timer (struct brcms_timer*,int ,int) ;

void
wlapi_add_timer(struct wlapi_timer *t, uint ms, int periodic)
{
 brcms_add_timer((struct brcms_timer *)t, ms, periodic);
}
