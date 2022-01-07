
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 char* kstrdup (char const*,int ) ;

char *uml_strdup(const char *string)
{
 return kstrdup(string, GFP_KERNEL);
}
