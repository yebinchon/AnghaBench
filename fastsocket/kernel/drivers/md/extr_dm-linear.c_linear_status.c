
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct linear_c {TYPE_1__* dev; scalar_t__ start; } ;
struct dm_target {scalar_t__ private; } ;
typedef int status_type_t ;
struct TYPE_2__ {char* name; } ;




 int snprintf (char*,unsigned int,char*,char*,unsigned long long) ;

__attribute__((used)) static int linear_status(struct dm_target *ti, status_type_t type,
    char *result, unsigned int maxlen)
{
 struct linear_c *lc = (struct linear_c *) ti->private;

 switch (type) {
 case 129:
  result[0] = '\0';
  break;

 case 128:
  snprintf(result, maxlen, "%s %llu", lc->dev->name,
    (unsigned long long)lc->start);
  break;
 }
 return 0;
}
