
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_memory {TYPE_1__* bridge; } ;
struct TYPE_2__ {int dev_private_data; } ;


 int tioca_tlbflush (int ) ;

__attribute__((used)) static void sgi_tioca_tlbflush(struct agp_memory *mem)
{
 tioca_tlbflush(mem->bridge->dev_private_data);
}
