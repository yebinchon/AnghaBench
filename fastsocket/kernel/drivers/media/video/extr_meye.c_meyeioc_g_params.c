
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meye_params {int dummy; } ;
struct TYPE_2__ {struct meye_params params; } ;


 TYPE_1__ meye ;

__attribute__((used)) static int meyeioc_g_params(struct meye_params *p)
{
 *p = meye.params;
 return 0;
}
