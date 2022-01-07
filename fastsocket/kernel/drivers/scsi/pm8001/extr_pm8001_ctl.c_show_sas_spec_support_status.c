
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 unsigned int SAS_1_1 ;
 unsigned int SAS_2_0 ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t
show_sas_spec_support_status(unsigned int mode, char *buf)
{
 ssize_t len = 0;

 if (mode & SAS_1_1)
  len = sprintf(buf, "%s", "SAS1.1");
 if (mode & SAS_2_0)
  len += sprintf(buf + len, "%s%s", len ? ", " : "", "SAS2.0");
 len += sprintf(buf + len, "\n");

 return len;
}
