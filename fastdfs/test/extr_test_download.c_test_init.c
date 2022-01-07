
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPERM ;
 char* FILENAME_FAIL ;
 char* STRERROR (int) ;
 scalar_t__ access (char*,int ) ;
 scalar_t__ chdir (char*) ;
 int errno ;
 int * fopen (char*,char*) ;
 int * fpFail ;
 scalar_t__ mkdir (char*,int) ;
 int printf (char*,...) ;
 int proccess_index ;
 int sprintf (char*,char*,char*,int) ;

__attribute__((used)) static int test_init()
{
 char filename[64];

 if (access("download", 0) != 0 && mkdir("download", 0755) != 0)
 {
 }

 if (chdir("download") != 0)
 {
  printf("chdir fail, errno: %d, error info: %s\n", errno, STRERROR(errno));
  return errno != 0 ? errno : EPERM;
 }

 sprintf(filename, "%s.%d", FILENAME_FAIL, proccess_index);
 if ((fpFail=fopen(filename, "wb")) == ((void*)0))
 {
  printf("open file %s fail, errno: %d, error info: %s\n",
   filename, errno, STRERROR(errno));
  return errno != 0 ? errno : EPERM;
 }

 return 0;
}
