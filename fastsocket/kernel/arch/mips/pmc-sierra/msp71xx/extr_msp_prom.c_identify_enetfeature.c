
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char FEATURE_NOEXIST ;
 char* get_features () ;

__attribute__((used)) static char identify_enetfeature(char key, unsigned long interface_num)
{
 char *feature = get_features();

 while (*feature) {
  if (*feature++ == key && interface_num-- == 0)
   return *feature;
  feature++;
 }

 return FEATURE_NOEXIST;
}
