
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_unit {int dummy; } ;


 int udelay (int) ;
 int write_status (struct pd_unit*,int) ;

__attribute__((used)) static void pd_reset(struct pd_unit *disk)
{
 write_status(disk, 4);
 udelay(50);
 write_status(disk, 0);
 udelay(250);
}
