
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_cmd_buf {int cmd; int length; int* data; } ;
struct rtc_time {int tm_wday; scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;


 int hex2bcd (scalar_t__) ;

__attribute__((used)) static inline void smu_fill_set_rtc_cmd(struct smu_cmd_buf *cmd_buf,
     struct rtc_time *time)
{
 cmd_buf->cmd = 0x8e;
 cmd_buf->length = 8;
 cmd_buf->data[0] = 0x80;
 cmd_buf->data[1] = hex2bcd(time->tm_sec);
 cmd_buf->data[2] = hex2bcd(time->tm_min);
 cmd_buf->data[3] = hex2bcd(time->tm_hour);
 cmd_buf->data[4] = time->tm_wday;
 cmd_buf->data[5] = hex2bcd(time->tm_mday);
 cmd_buf->data[6] = hex2bcd(time->tm_mon) + 1;
 cmd_buf->data[7] = hex2bcd(time->tm_year - 100);
}
