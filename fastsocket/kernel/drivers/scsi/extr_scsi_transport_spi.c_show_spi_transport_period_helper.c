
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int period_to_str (char*,int) ;

__attribute__((used)) static ssize_t
show_spi_transport_period_helper(char *buf, int period)
{
 int len = period_to_str(buf, period);
 buf[len++] = '\n';
 buf[len] = '\0';
 return len;
}
