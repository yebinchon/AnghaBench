
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 size_t PAGE_SIZE ;
 int add_device (char*,size_t) ;
 int kill_final_newline (char*) ;
 int parse_err (char*) ;
 int parse_num (size_t*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char*) ;
 int strnlen (char const*,int) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int block2mtd_setup2(const char *val)
{
 char buf[80 + 12];
 char *str = buf;
 char *token[2];
 char *name;
 size_t erase_size = PAGE_SIZE;
 int i, ret;

 if (strnlen(val, sizeof(buf)) >= sizeof(buf))
  parse_err("parameter too long");

 strcpy(str, val);
 kill_final_newline(str);

 for (i = 0; i < 2; i++)
  token[i] = strsep(&str, ",");

 if (str)
  parse_err("too many arguments");

 if (!token[0])
  parse_err("no argument");

 name = token[0];
 if (strlen(name) + 1 > 80)
  parse_err("device name too long");

 if (token[1]) {
  ret = parse_num(&erase_size, token[1]);
  if (ret) {
   parse_err("illegal erase size");
  }
 }

 add_device(name, erase_size);

 return 0;
}
