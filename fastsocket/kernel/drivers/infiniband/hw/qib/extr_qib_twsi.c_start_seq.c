
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int dummy; } ;


 int scl_out (struct qib_devdata*,int) ;
 int sda_out (struct qib_devdata*,int) ;
 int udelay (int) ;

__attribute__((used)) static void start_seq(struct qib_devdata *dd)
{
 sda_out(dd, 1);
 scl_out(dd, 1);
 sda_out(dd, 0);
 udelay(1);
 scl_out(dd, 0);
}
