
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVO_MAST_NTFY ;
 int nouveau_bo_rd32 (void*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static bool
evo_sync_wait(void *data)
{
 if (nouveau_bo_rd32(data, EVO_MAST_NTFY) != 0x00000000)
  return 1;
 usleep_range(1, 2);
 return 0;
}
