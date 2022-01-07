
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IN2000_hostdata {int dummy; } ;


 int IO_WD_ADDR ;
 int IO_WD_DATA ;
 unsigned long WD_TRANSFER_COUNT_MSB ;
 int write1_io (unsigned long,int ) ;

__attribute__((used)) static void write_3393_count(struct IN2000_hostdata *hostdata, unsigned long value)
{
 write1_io(WD_TRANSFER_COUNT_MSB, IO_WD_ADDR);
 write1_io((value >> 16), IO_WD_DATA);
 write1_io((value >> 8), IO_WD_DATA);
 write1_io(value, IO_WD_DATA);
}
