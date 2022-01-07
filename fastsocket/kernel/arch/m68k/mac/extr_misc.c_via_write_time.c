
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 long RTC_OFFSET ;
 int via_pram_command (int,int*) ;

__attribute__((used)) static void via_write_time(long time)
{
 union {
  __u8 cdata[4];
  long idata;
 } data;
 __u8 temp;



 temp = 0x55;
 via_pram_command(0x35, &temp);

 data.idata = time + RTC_OFFSET;
 via_pram_command(0x01, &data.cdata[3]);
 via_pram_command(0x05, &data.cdata[2]);
 via_pram_command(0x09, &data.cdata[1]);
 via_pram_command(0x0D, &data.cdata[0]);



 temp = 0xD5;
 via_pram_command(0x35, &temp);
}
