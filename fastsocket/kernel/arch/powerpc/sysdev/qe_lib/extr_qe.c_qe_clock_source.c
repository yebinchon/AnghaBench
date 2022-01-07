
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum qe_clock { ____Placeholder_qe_clock } qe_clock ;


 int QE_BRG1 ;
 int QE_CLK1 ;
 int QE_CLK_DUMMY ;
 int QE_CLK_NONE ;
 unsigned int simple_strtoul (char const*,int *,int) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

enum qe_clock qe_clock_source(const char *source)
{
 unsigned int i;

 if (strcasecmp(source, "none") == 0)
  return QE_CLK_NONE;

 if (strncasecmp(source, "brg", 3) == 0) {
  i = simple_strtoul(source + 3, ((void*)0), 10);
  if ((i >= 1) && (i <= 16))
   return (QE_BRG1 - 1) + i;
  else
   return QE_CLK_DUMMY;
 }

 if (strncasecmp(source, "clk", 3) == 0) {
  i = simple_strtoul(source + 3, ((void*)0), 10);
  if ((i >= 1) && (i <= 24))
   return (QE_CLK1 - 1) + i;
  else
   return QE_CLK_DUMMY;
 }

 return QE_CLK_DUMMY;
}
