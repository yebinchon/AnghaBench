
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ in_suspend; } ;
typedef TYPE_1__ board_info_t ;


 int mdelay (unsigned int) ;
 int msleep (unsigned int) ;

__attribute__((used)) static void dm9000_msleep(board_info_t *db, unsigned int ms)
{
 if (db->in_suspend)
  mdelay(ms);
 else
  msleep(ms);
}
