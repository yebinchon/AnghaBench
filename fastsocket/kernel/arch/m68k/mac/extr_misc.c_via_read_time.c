
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 long RTC_OFFSET ;
 int printk (char*,long,long) ;
 int via_pram_command (int,int *) ;

__attribute__((used)) static long via_read_time(void)
{
 union {
  __u8 cdata[4];
  long idata;
 } result, last_result;
 int ct;






 ct = 0;
 do {
  if (++ct > 10) {
   printk("via_read_time: couldn't get valid time, "
          "last read = 0x%08lx and 0x%08lx\n",
          last_result.idata, result.idata);
   break;
  }

  last_result.idata = result.idata;
  result.idata = 0;

  via_pram_command(0x81, &result.cdata[3]);
  via_pram_command(0x85, &result.cdata[2]);
  via_pram_command(0x89, &result.cdata[1]);
  via_pram_command(0x8D, &result.cdata[0]);
 } while (result.idata != last_result.idata);

 return result.idata - RTC_OFFSET;
}
