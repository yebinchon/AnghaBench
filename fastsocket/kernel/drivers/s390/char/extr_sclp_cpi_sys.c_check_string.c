
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t CPI_LENGTH_NAME ;
 int EINVAL ;
 scalar_t__ isalpha (char const) ;
 scalar_t__ isdigit (char const) ;
 scalar_t__ strchr (char*,char const) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int check_string(const char *attr, const char *str)
{
 size_t len;
 size_t i;

 len = strlen(str);

 if ((len > 0) && (str[len - 1] == '\n'))
  len--;

 if (len > CPI_LENGTH_NAME)
  return -EINVAL;

 for (i = 0; i < len ; i++) {
  if (isalpha(str[i]) || isdigit(str[i]) ||
      strchr("$@# ", str[i]))
   continue;
  return -EINVAL;
 }

 return 0;
}
