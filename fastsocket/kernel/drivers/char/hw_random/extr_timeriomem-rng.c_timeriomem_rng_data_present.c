
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwrng {scalar_t__ priv; } ;
struct TYPE_2__ {int present; int completion; } ;


 TYPE_1__* timeriomem_rng_data ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int timeriomem_rng_data_present(struct hwrng *rng, int wait)
{
 if (rng->priv == 0)
  return 1;

 if (!wait || timeriomem_rng_data->present)
  return timeriomem_rng_data->present;

 wait_for_completion(&timeriomem_rng_data->completion);

 return 1;
}
