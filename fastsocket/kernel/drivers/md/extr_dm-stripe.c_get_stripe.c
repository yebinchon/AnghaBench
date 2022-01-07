
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_c {TYPE_1__* stripe; } ;
struct dm_target {int table; } ;
struct TYPE_2__ {unsigned long long physical_start; int dev; } ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ dm_get_device (struct dm_target*,char*,int ,int *) ;
 int dm_table_get_mode (int ) ;
 int sscanf (char*,char*,unsigned long long*,char*) ;

__attribute__((used)) static int get_stripe(struct dm_target *ti, struct stripe_c *sc,
        unsigned int stripe, char **argv)
{
 unsigned long long start;
 char dummy;

 if (sscanf(argv[1], "%llu%c", &start, &dummy) != 1)
  return -EINVAL;

 if (dm_get_device(ti, argv[0], dm_table_get_mode(ti->table),
     &sc->stripe[stripe].dev))
  return -ENXIO;

 sc->stripe[stripe].physical_start = start;

 return 0;
}
