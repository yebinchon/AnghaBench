
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EPERM ;
 char* STAT_FILENAME_BY_OVERALL ;
 char* STRERROR (int) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int printf (char*,char*,int,char*) ;
 int proccess_index ;
 int sprintf (char*,char*,char*,int) ;
 scalar_t__ start_time ;
 int success_count ;
 scalar_t__ time (int *) ;
 int total_count ;

__attribute__((used)) static int save_stats_by_overall()
{
 char filename[64];
 FILE *fp;

 sprintf(filename, "%s.%d", STAT_FILENAME_BY_OVERALL, proccess_index);
 if ((fp=fopen(filename, "wb")) == ((void*)0))
 {
  printf("open file %s fail, errno: %d, error info: %s\n",
   filename, errno, STRERROR(errno));
  return errno != 0 ? errno : EPERM;
 }

 fprintf(fp, "#total_count success_count  time_used(s)\n");
 fprintf(fp, "%d %d %d\n", total_count, success_count, (int)(time(((void*)0)) - start_time));

 fclose(fp);
 return 0;
}
