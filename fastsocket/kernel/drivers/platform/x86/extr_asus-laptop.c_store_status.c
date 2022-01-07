
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int acpi_handle ;


 int parse_arg (char const*,size_t,int*) ;
 int write_status (int ,int,int) ;

__attribute__((used)) static ssize_t store_status(const char *buf, size_t count,
       acpi_handle handle, int mask)
{
 int rv, value;
 int out = 0;

 rv = parse_arg(buf, count, &value);
 if (rv > 0)
  out = value ? 1 : 0;

 write_status(handle, out, mask);

 return rv;
}
