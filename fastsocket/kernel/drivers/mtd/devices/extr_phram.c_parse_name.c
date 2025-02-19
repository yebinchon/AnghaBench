
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 char* kmalloc (size_t,int ) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int parse_name(char **pname, const char *token)
{
 size_t len;
 char *name;

 len = strlen(token) + 1;
 if (len > 64)
  return -ENOSPC;

 name = kmalloc(len, GFP_KERNEL);
 if (!name)
  return -ENOMEM;

 strcpy(name, token);

 *pname = name;
 return 0;
}
