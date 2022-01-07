
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ UMID_LEN ;
 int printf (char*,char) ;
 char remove_files_and_dir (char*) ;
 int sprintf (char*,char*,char*,int ) ;
 scalar_t__ strlen (char*) ;
 int umid ;
 char* uml_dir ;

__attribute__((used)) static void remove_umid_dir(void)
{
 char dir[strlen(uml_dir) + UMID_LEN + 1], err;

 sprintf(dir, "%s%s", uml_dir, umid);
 err = remove_files_and_dir(dir);
 if (err)
  printf("remove_umid_dir - remove_files_and_dir failed with "
         "err = %d\n", err);
}
