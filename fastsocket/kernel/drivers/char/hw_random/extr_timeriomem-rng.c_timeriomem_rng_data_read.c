
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct hwrng {unsigned long priv; } ;
typedef unsigned long s32 ;
struct TYPE_5__ {int completion; scalar_t__ present; int address; } ;
struct TYPE_4__ {unsigned long expires; } ;


 int add_timer (TYPE_1__*) ;
 int init_completion (int *) ;
 unsigned long jiffies ;
 int readl (int ) ;
 TYPE_2__* timeriomem_rng_data ;
 TYPE_1__ timeriomem_rng_timer ;

__attribute__((used)) static int timeriomem_rng_data_read(struct hwrng *rng, u32 *data)
{
 unsigned long cur;
 s32 delay;

 *data = readl(timeriomem_rng_data->address);

 if (rng->priv != 0) {
  cur = jiffies;

  delay = cur - timeriomem_rng_timer.expires;
  delay = rng->priv - (delay % rng->priv);

  timeriomem_rng_timer.expires = cur + delay;
  timeriomem_rng_data->present = 0;

  init_completion(&timeriomem_rng_data->completion);
  add_timer(&timeriomem_rng_timer);
 }

 return 4;
}
