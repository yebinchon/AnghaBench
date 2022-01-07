
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct corgikbd {int dummy; } ;


 int corgikbd_scankeyboard (struct corgikbd*) ;

__attribute__((used)) static void corgikbd_timer_callback(unsigned long data)
{
 struct corgikbd *corgikbd_data = (struct corgikbd *) data;
 corgikbd_scankeyboard(corgikbd_data);
}
