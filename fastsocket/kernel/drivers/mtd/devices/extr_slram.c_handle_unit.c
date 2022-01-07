
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long handle_unit(unsigned long value, char *unit)
{
 if ((*unit == 'M') || (*unit == 'm')) {
  return(value * 1024 * 1024);
 } else if ((*unit == 'K') || (*unit == 'k')) {
  return(value * 1024);
 }
 return(value);
}
