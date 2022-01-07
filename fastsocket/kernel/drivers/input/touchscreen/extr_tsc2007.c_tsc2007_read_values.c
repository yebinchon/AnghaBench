
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc2007 {int dummy; } ;
struct ts_event {void* z2; void* z1; void* x; void* y; } ;


 int PWRDOWN ;
 int READ_X ;
 int READ_Y ;
 int READ_Z1 ;
 int READ_Z2 ;
 void* tsc2007_xfer (struct tsc2007*,int ) ;

__attribute__((used)) static void tsc2007_read_values(struct tsc2007 *tsc, struct ts_event *tc)
{

 tc->y = tsc2007_xfer(tsc, READ_Y);


 tc->x = tsc2007_xfer(tsc, READ_X);


 tc->z1 = tsc2007_xfer(tsc, READ_Z1);
 tc->z2 = tsc2007_xfer(tsc, READ_Z2);


 tsc2007_xfer(tsc, PWRDOWN);
}
