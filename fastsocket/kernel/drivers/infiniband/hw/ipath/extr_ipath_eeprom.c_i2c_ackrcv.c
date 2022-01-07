
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipath_devdata {int dummy; } ;


 int i2c_line_high ;
 int i2c_line_low ;
 int scl_out (struct ipath_devdata*,int ) ;
 scalar_t__ sda_in (struct ipath_devdata*,int) ;

__attribute__((used)) static int i2c_ackrcv(struct ipath_devdata *dd)
{
 u8 ack_received;



 ack_received = sda_in(dd, 1);
 scl_out(dd, i2c_line_high);
 ack_received = sda_in(dd, 1) == 0;
 scl_out(dd, i2c_line_low);
 return ack_received;
}
