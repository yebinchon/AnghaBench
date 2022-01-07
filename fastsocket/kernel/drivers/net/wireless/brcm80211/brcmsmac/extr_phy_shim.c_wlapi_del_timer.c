
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlapi_timer {int dummy; } ;
struct brcms_timer {int dummy; } ;


 int brcms_del_timer (struct brcms_timer*) ;

bool wlapi_del_timer(struct wlapi_timer *t)
{
 return brcms_del_timer((struct brcms_timer *)t);
}
