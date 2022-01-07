
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_mregion {int mapsz; int * map; } ;


 int kfree (int ) ;

__attribute__((used)) static void deinit_qib_mregion(struct qib_mregion *mr)
{
 int i = mr->mapsz;

 mr->mapsz = 0;
 while (i)
  kfree(mr->map[--i]);
}
