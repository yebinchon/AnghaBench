
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union evm_time {int * bytes; int value; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int DM355EVM_MSP_RTC_0 ;
 int DM355EVM_MSP_RTC_1 ;
 int DM355EVM_MSP_RTC_2 ;
 int DM355EVM_MSP_RTC_3 ;
 int cpu_to_le32 (unsigned long) ;
 int dev_dbg (struct device*,char*,int ) ;
 int dm355evm_msp_write (int ,int ) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;

__attribute__((used)) static int dm355evm_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 union evm_time time;
 unsigned long value;
 int status;

 rtc_tm_to_time(tm, &value);
 time.value = cpu_to_le32(value);

 dev_dbg(dev, "write timestamp %08x\n", time.value);





 status = dm355evm_msp_write(time.bytes[0], DM355EVM_MSP_RTC_0);
 if (status < 0)
  return status;

 status = dm355evm_msp_write(time.bytes[1], DM355EVM_MSP_RTC_1);
 if (status < 0)
  return status;

 status = dm355evm_msp_write(time.bytes[2], DM355EVM_MSP_RTC_2);
 if (status < 0)
  return status;

 status = dm355evm_msp_write(time.bytes[3], DM355EVM_MSP_RTC_3);
 if (status < 0)
  return status;

 return 0;
}
