
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 char* DIVA_BUILD ;
 char* DRIVERLNAME ;
 char* DRIVERNAME ;
 char* DRIVERRELEASE_DIDD ;
 char* diva_didd_common_code_build ;
 char* getrev (char*) ;
 int main_revision ;
 scalar_t__ sprintf (char*,char*,char*,...) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static int
proc_read(char *page, char **start, off_t off, int count, int *eof,
   void *data)
{
 int len = 0;
 char tmprev[32];

 strcpy(tmprev, main_revision);
 len += sprintf(page + len, "%s\n", DRIVERNAME);
 len += sprintf(page + len, "name     : %s\n", DRIVERLNAME);
 len += sprintf(page + len, "release  : %s\n", DRIVERRELEASE_DIDD);
 len += sprintf(page + len, "build    : %s(%s)\n",
         diva_didd_common_code_build, DIVA_BUILD);
 len += sprintf(page + len, "revision : %s\n", getrev(tmprev));

 if (off + count >= len)
  *eof = 1;
 if (len < off)
  return 0;
 *start = page + off;
 return ((count < len - off) ? count : len - off);
}
