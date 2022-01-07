
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_ddbs; int ddb_lock; int ddb_bitmap; } ;
struct asd_ha_struct {TYPE_1__ hw_prof; } ;


 int BITS_TO_LONGS (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int asd_extend_cmdctx (struct asd_ha_struct*) ;
 int asd_extend_devctx (struct asd_ha_struct*) ;
 int asd_get_max_scb_ddb (struct asd_ha_struct*) ;
 int kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int asd_init_ctxmem(struct asd_ha_struct *asd_ha)
{
 int bitmap_bytes;

 asd_get_max_scb_ddb(asd_ha);
 asd_extend_devctx(asd_ha);
 asd_extend_cmdctx(asd_ha);


 bitmap_bytes = (asd_ha->hw_prof.max_ddbs+7)/8;
 bitmap_bytes = BITS_TO_LONGS(bitmap_bytes*8)*sizeof(unsigned long);
 asd_ha->hw_prof.ddb_bitmap = kzalloc(bitmap_bytes, GFP_KERNEL);
 if (!asd_ha->hw_prof.ddb_bitmap)
  return -ENOMEM;
 spin_lock_init(&asd_ha->hw_prof.ddb_lock);

 return 0;
}
