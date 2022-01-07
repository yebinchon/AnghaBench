
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const** fcpio_status_str ;

__attribute__((used)) static const char *fnic_fcpio_status_to_str(unsigned int status)
{
 if (status >= ARRAY_SIZE(fcpio_status_str) || !fcpio_status_str[status])
  return "unknown";

 return fcpio_status_str[status];
}
