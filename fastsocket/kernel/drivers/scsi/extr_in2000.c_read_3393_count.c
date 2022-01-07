
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IN2000_hostdata {int dummy; } ;


 int IO_WD_ADDR ;
 int IO_WD_DATA ;
 int WD_TRANSFER_COUNT_MSB ;
 unsigned long read1_io (int ) ;
 int write1_io (int ,int ) ;

__attribute__((used)) static unsigned long read_3393_count(struct IN2000_hostdata *hostdata)
{
 unsigned long value;

 write1_io(WD_TRANSFER_COUNT_MSB, IO_WD_ADDR);
 value = read1_io(IO_WD_DATA) << 16;
 value |= read1_io(IO_WD_DATA) << 8;
 value |= read1_io(IO_WD_DATA);
 return value;
}
