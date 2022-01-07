
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_target {struct delay_c* private; } ;
struct delay_c {int write_delay; scalar_t__ start_write; TYPE_2__* dev_write; int read_delay; scalar_t__ start_read; TYPE_1__* dev_read; int writes; int reads; } ;
typedef int status_type_t ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int name; } ;


 int DMEMIT (char*,int ,unsigned long long,...) ;



__attribute__((used)) static int delay_status(struct dm_target *ti, status_type_t type,
   char *result, unsigned maxlen)
{
 struct delay_c *dc = ti->private;
 int sz = 0;

 switch (type) {
 case 129:
  DMEMIT("%u %u", dc->reads, dc->writes);
  break;

 case 128:
  DMEMIT("%s %llu %u", dc->dev_read->name,
         (unsigned long long) dc->start_read,
         dc->read_delay);
  if (dc->dev_write)
   DMEMIT(" %s %llu %u", dc->dev_write->name,
          (unsigned long long) dc->start_write,
          dc->write_delay);
  break;
 }

 return 0;
}
