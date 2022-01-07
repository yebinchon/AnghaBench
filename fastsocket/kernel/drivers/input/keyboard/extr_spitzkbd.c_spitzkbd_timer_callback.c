
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spitzkbd {int dummy; } ;


 int spitzkbd_scankeyboard (struct spitzkbd*) ;

__attribute__((used)) static void spitzkbd_timer_callback(unsigned long data)
{
 struct spitzkbd *spitzkbd_data = (struct spitzkbd *) data;

 spitzkbd_scankeyboard(spitzkbd_data);
}
