
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_wac {int dummy; } ;
struct wacom_combo {int dummy; } ;


 int wacom_bpt_pen (struct wacom_wac*,struct wacom_combo*) ;

__attribute__((used)) static int wacom_bpt_irq(struct wacom_wac *wacom, void *wcombo)
{
 struct wacom_combo *wc = wcombo;


 return wacom_bpt_pen(wacom, wc);
}
