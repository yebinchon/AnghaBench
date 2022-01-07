
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ah {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int nes_destroy_ah(struct ib_ah *ah)
{
 return -ENOSYS;
}
