
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aoedev {TYPE_1__* gd; } ;
struct TYPE_2__ {char* disk_name; } ;


 int strncmp (char*,char*,size_t) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int
user_req(char *s, size_t slen, struct aoedev *d)
{
 char *p;
 size_t lim;

 if (!d->gd)
  return 0;
 p = strrchr(d->gd->disk_name, '/');
 if (!p)
  p = d->gd->disk_name;
 else
  p += 1;
 lim = sizeof(d->gd->disk_name);
 lim -= p - d->gd->disk_name;
 if (slen < lim)
  lim = slen;

 return !strncmp(s, p, lim);
}
