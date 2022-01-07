
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stripe_c {unsigned int stripes; TYPE_2__* stripe; scalar_t__ chunk_size; } ;
struct dm_target {scalar_t__ private; } ;
typedef int status_type_t ;
struct TYPE_4__ {scalar_t__ physical_start; TYPE_1__* dev; int error_count; } ;
struct TYPE_3__ {unsigned int name; } ;


 int DMEMIT (char*,...) ;


 int atomic_read (int *) ;

__attribute__((used)) static int stripe_status(struct dm_target *ti,
    status_type_t type, char *result, unsigned int maxlen)
{
 struct stripe_c *sc = (struct stripe_c *) ti->private;
 char buffer[sc->stripes + 1];
 unsigned int sz = 0;
 unsigned int i;

 switch (type) {
 case 129:
  DMEMIT("%d ", sc->stripes);
  for (i = 0; i < sc->stripes; i++) {
   DMEMIT("%s ", sc->stripe[i].dev->name);
   buffer[i] = atomic_read(&(sc->stripe[i].error_count)) ?
    'D' : 'A';
  }
  buffer[i] = '\0';
  DMEMIT("1 %s", buffer);
  break;

 case 128:
  DMEMIT("%d %llu", sc->stripes,
   (unsigned long long)sc->chunk_size);
  for (i = 0; i < sc->stripes; i++)
   DMEMIT(" %s %llu", sc->stripe[i].dev->name,
       (unsigned long long)sc->stripe[i].physical_start);
  break;
 }
 return 0;
}
