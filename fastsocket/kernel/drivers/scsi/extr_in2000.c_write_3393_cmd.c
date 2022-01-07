
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;
struct IN2000_hostdata {int dummy; } ;


 int IO_WD_ADDR ;
 int IO_WD_DATA ;
 int WD_COMMAND ;
 int write1_io (int ,int ) ;

__attribute__((used)) static inline void write_3393_cmd(struct IN2000_hostdata *hostdata, uchar cmd)
{


 write1_io(WD_COMMAND, IO_WD_ADDR);
 write1_io(cmd, IO_WD_DATA);
}
