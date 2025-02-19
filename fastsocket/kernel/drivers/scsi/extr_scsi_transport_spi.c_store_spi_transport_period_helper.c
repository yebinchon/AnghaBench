
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef size_t ssize_t ;


 int SPI_STATIC_PPR ;
 int isdigit (char) ;
 int* ppr_to_ps ;
 int simple_strtoul (char const*,char**,int) ;

__attribute__((used)) static ssize_t
store_spi_transport_period_helper(struct device *dev, const char *buf,
      size_t count, int *periodp)
{
 int j, picosec, period = -1;
 char *endp;

 picosec = simple_strtoul(buf, &endp, 10) * 1000;
 if (*endp == '.') {
  int mult = 100;
  do {
   endp++;
   if (!isdigit(*endp))
    break;
   picosec += (*endp - '0') * mult;
   mult /= 10;
  } while (mult > 0);
 }

 for (j = 0; j <= SPI_STATIC_PPR; j++) {
  if (ppr_to_ps[j] < picosec)
   continue;
  period = j;
  break;
 }

 if (period == -1)
  period = picosec / 4000;

 if (period > 0xff)
  period = 0xff;

 *periodp = period;

 return count;
}
