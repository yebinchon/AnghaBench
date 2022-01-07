
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;
struct IN2000_hostdata {int dummy; } ;


 int IO_WD_ADDR ;
 int IO_WD_DATA ;
 int read1_io (int ) ;
 int write1_io (int ,int ) ;

__attribute__((used)) static inline uchar read_3393(struct IN2000_hostdata *hostdata, uchar reg_num)
{
 write1_io(reg_num, IO_WD_ADDR);
 return read1_io(IO_WD_DATA);
}
