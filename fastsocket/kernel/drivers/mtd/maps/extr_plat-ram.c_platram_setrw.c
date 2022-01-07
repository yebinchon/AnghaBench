
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platram_info {int dev; TYPE_1__* pdata; } ;
struct TYPE_2__ {int (* set_rw ) (int ,int) ;} ;


 int stub1 (int ,int) ;

__attribute__((used)) static inline void platram_setrw(struct platram_info *info, int to)
{
 if (info->pdata == ((void*)0))
  return;

 if (info->pdata->set_rw != ((void*)0))
  (info->pdata->set_rw)(info->dev, to);
}
