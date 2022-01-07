
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;


 long FDFS_MAX_SERVER_ID ;
 int FDFS_STORAGE_ID_MAX_SIZE ;
 int snprintf (char*,int,char*,long) ;
 scalar_t__ strcmp (char*,char const*) ;
 long strtol (char const*,char**,int) ;

bool fdfs_is_server_id_valid(const char *id)
{
 long n;
 char *endptr;
 char buff[FDFS_STORAGE_ID_MAX_SIZE];

 if (*id == '\0')
 {
  return 0;
 }

 endptr = ((void*)0);
 n = strtol(id, &endptr, 10);
 if (endptr != ((void*)0) && *endptr != '\0')
 {
  return 0;
 }

 if (n <= 0 || n > FDFS_MAX_SERVER_ID)
 {
  return 0;
 }

 snprintf(buff, sizeof(buff), "%ld", n);
 return strcmp(buff, id) == 0;
}
