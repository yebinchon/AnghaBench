
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_cmd {int dummy; } ;
struct completion {int dummy; } ;


 int complete (struct completion*) ;

void smu_done_complete(struct smu_cmd *cmd, void *misc)
{
 struct completion *comp = misc;

 complete(comp);
}
