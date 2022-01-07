
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {struct dm_dev* private; } ;
struct dm_dev {char* name; } ;
typedef int status_type_t ;




 int snprintf (char*,unsigned int,char*,char*) ;

__attribute__((used)) static int origin_status(struct dm_target *ti, status_type_t type, char *result,
    unsigned int maxlen)
{
 struct dm_dev *dev = ti->private;

 switch (type) {
 case 129:
  result[0] = '\0';
  break;

 case 128:
  snprintf(result, maxlen, "%s", dev->name);
  break;
 }

 return 0;
}
