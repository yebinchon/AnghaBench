
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qib_devdata {int dummy; } ;


 int scl_out (struct qib_devdata*,int) ;
 scalar_t__ sda_in (struct qib_devdata*,int) ;

__attribute__((used)) static int i2c_ackrcv(struct qib_devdata *dd)
{
 u8 ack_received;



 ack_received = sda_in(dd, 1);
 scl_out(dd, 1);
 ack_received = sda_in(dd, 1) == 0;
 scl_out(dd, 0);
 return ack_received;
}
