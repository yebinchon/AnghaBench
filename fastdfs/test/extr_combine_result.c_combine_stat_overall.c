
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;
typedef int FILE ;


 int EINVAL ;
 int EPERM ;
 char* STAT_FILENAME_BY_OVERALL ;
 char* STRERROR (int) ;
 int errno ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int printf (char*,char*,int,char*) ;
 int proccess_count ;
 int sprintf (char*,char*,char*,int) ;
 int sscanf (char*,char*,int*,int*,int*) ;

__attribute__((used)) static int combine_stat_overall(int *ptotal_count, int *psuccess_count, int *ptime_used)
{
 char filename[64];
 FILE *fp;
 int proccess_index;
 char buff[256];
 int time_used;
 int total_count;
 int success_count;

 *ptotal_count = 0;
 *psuccess_count = 0;
 *ptime_used = 0;

 for (proccess_index=0; proccess_index<proccess_count; proccess_index++)
 {
  sprintf(filename, "%s.%d", STAT_FILENAME_BY_OVERALL, proccess_index);
  if ((fp=fopen(filename, "r")) == ((void*)0))
  {
   printf("open file %s fail, errno: %d, error info: %s\n",
    filename, errno, STRERROR(errno));
   return errno != 0 ? errno : EPERM;
  }

  while (fgets(buff, sizeof(buff), fp) != ((void*)0))
  {
   if (*buff == '#')
   {
    continue;
   }

   if (sscanf(buff, "%d %d %d", &total_count, &success_count, &time_used) != 3)
   {
    printf("sscanf %s fail, errno: %d, error info: %s\n",
     filename, errno, STRERROR(errno));
    return errno != 0 ? errno : EINVAL;
   }

   break;
  }

  *ptotal_count += total_count;
  *psuccess_count += success_count;
  *ptime_used += time_used;
  fclose(fp);
 }

 *ptime_used /= proccess_count;

 return 0;
}
