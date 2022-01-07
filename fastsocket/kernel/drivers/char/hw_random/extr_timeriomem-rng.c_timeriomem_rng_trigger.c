
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int present; int completion; } ;


 int complete (int *) ;
 TYPE_1__* timeriomem_rng_data ;

__attribute__((used)) static void timeriomem_rng_trigger(unsigned long dummy)
{
 timeriomem_rng_data->present = 1;
 complete(&timeriomem_rng_data->completion);
}
