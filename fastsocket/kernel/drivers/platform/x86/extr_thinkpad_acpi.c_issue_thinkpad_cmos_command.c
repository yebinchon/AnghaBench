
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int ENXIO ;
 int acpi_evalf (int ,int *,int *,char*,int) ;
 int cmos_handle ;

__attribute__((used)) static int issue_thinkpad_cmos_command(int cmos_cmd)
{
 if (!cmos_handle)
  return -ENXIO;

 if (!acpi_evalf(cmos_handle, ((void*)0), ((void*)0), "vd", cmos_cmd))
  return -EIO;

 return 0;
}
