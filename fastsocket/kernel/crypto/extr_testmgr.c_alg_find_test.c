
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* alg_test_descs ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static int alg_find_test(const char *alg)
{
 int start = 0;
 int end = ARRAY_SIZE(alg_test_descs);

 while (start < end) {
  int i = (start + end) / 2;
  int diff = strcmp(alg_test_descs[i].alg, alg);

  if (diff > 0) {
   end = i;
   continue;
  }

  if (diff < 0) {
   start = i + 1;
   continue;
  }

  return i;
 }

 return -1;
}
