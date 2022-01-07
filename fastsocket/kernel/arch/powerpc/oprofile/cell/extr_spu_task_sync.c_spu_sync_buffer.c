
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vma_to_fileoffset_map {int dummy; } ;
struct spu {int dummy; } ;
struct cached_info {struct spu* the_spu; struct vma_to_fileoffset_map* map; } ;
struct TYPE_2__ {int last_guard_val; scalar_t__ ctx_sw_seen; } ;


 int buffer_lock ;
 int cache_lock ;
 struct cached_info* get_cached_info (int *,int) ;
 int pr_debug (char*,int) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* spu_buff ;
 int spu_buff_add (unsigned long long,int) ;
 unsigned long long vma_map_lookup (struct vma_to_fileoffset_map*,unsigned int,struct spu*,int*) ;

void spu_sync_buffer(int spu_num, unsigned int *samples,
       int num_samples)
{
 unsigned long long file_offset;
 unsigned long flags;
 int i;
 struct vma_to_fileoffset_map *map;
 struct spu *the_spu;
 unsigned long long spu_num_ll = spu_num;
 unsigned long long spu_num_shifted = spu_num_ll << 32;
 struct cached_info *c_info;






 spin_lock_irqsave(&cache_lock, flags);
 c_info = get_cached_info(((void*)0), spu_num);
 if (!c_info) {




  pr_debug("SPU_PROF: No cached SPU contex "
     "for SPU #%d. Dropping samples.\n", spu_num);
  goto out;
 }

 map = c_info->map;
 the_spu = c_info->the_spu;
 spin_lock(&buffer_lock);
 for (i = 0; i < num_samples; i++) {
  unsigned int sample = *(samples+i);
  int grd_val = 0;
  file_offset = 0;
  if (sample == 0)
   continue;
  file_offset = vma_map_lookup( map, sample, the_spu, &grd_val);






  if (grd_val && grd_val != spu_buff[spu_num].last_guard_val) {
   spu_buff[spu_num].last_guard_val = grd_val;

   break;
  }






  if (spu_buff[spu_num].ctx_sw_seen)
   spu_buff_add((file_offset | spu_num_shifted),
      spu_num);
 }
 spin_unlock(&buffer_lock);
out:
 spin_unlock_irqrestore(&cache_lock, flags);
}
