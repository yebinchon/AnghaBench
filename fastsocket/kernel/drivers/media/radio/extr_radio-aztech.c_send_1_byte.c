
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aztech {int io; int curvol; } ;


 int outb_p (scalar_t__,int ) ;
 int radio_wait_time ;
 int udelay (int ) ;
 scalar_t__ volconvert (int ) ;

__attribute__((used)) static void send_1_byte(struct aztech *az)
{
 udelay (radio_wait_time);
 outb_p(128 + 2 + volconvert(az->curvol), az->io);
 outb_p(128 + 64 + 2 + volconvert(az->curvol), az->io);
}
