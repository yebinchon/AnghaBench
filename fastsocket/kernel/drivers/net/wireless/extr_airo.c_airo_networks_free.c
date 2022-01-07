
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airo_info {int * networks; } ;


 int kfree (int *) ;

__attribute__((used)) static void airo_networks_free(struct airo_info *ai)
{
 kfree(ai->networks);
 ai->networks = ((void*)0);
}
