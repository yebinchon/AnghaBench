
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_cmd_info {int dummy; } ;


 int DIV_ROUND_UP (int,int) ;

__attribute__((used)) static unsigned nvme_queue_extra(int depth)
{
 return DIV_ROUND_UP(depth, 8) + (depth * sizeof(struct nvme_cmd_info));
}
