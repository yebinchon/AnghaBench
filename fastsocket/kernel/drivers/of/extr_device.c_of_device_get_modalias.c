
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_device {TYPE_1__* node; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; char* type; } ;


 int memcpy (char*,char const*,int) ;
 char* of_get_property (TYPE_1__*,char*,int*) ;
 int snprintf (char*,int,char*,char*,char*) ;

ssize_t of_device_get_modalias(struct of_device *ofdev,
    char *str, ssize_t len)
{
 const char *compat;
 int cplen, i;
 ssize_t tsize, csize, repend;


 csize = snprintf(str, len, "of:N%sT%s",
    ofdev->node->name, ofdev->node->type);


 compat = of_get_property(ofdev->node, "compatible", &cplen);
 if (!compat)
  return csize;


 for (i = (cplen - 1); i >= 0 && !compat[i]; i--)
  cplen--;
 if (!cplen)
  return csize;
 cplen++;


 tsize = csize + cplen;
 repend = tsize;

 if (csize >= len)
  return tsize;

 if (tsize >= len) {
  cplen = len - csize - 1;
  repend = len;
 }


 memcpy(&str[csize + 1], compat, cplen);
 for (i = csize; i < repend; i++) {
  char c = str[i];
  if (c == '\0')
   str[i] = 'C';
  else if (c == ' ')
   str[i] = '_';
 }

 return tsize;
}
