
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mem_blocks; int mem_block_size; } ;
struct ar9170 {int mem_lock; TYPE_1__ fw; int mem_free_blocks; int mem_allocs; int mem_bitmap; } ;
typedef size_t ssize_t ;


 int ADD (char*,size_t,size_t,char*,...) ;
 int atomic_read (int *) ;
 scalar_t__ bitmap_scnprintf (char*,size_t,int ,int) ;
 int bitmap_weight (int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static char *carl9170_debugfs_mem_usage_read(struct ar9170 *ar, char *buf,
          size_t bufsize, ssize_t *len)
{
 ADD(buf, *len, bufsize, "jar: [");

 spin_lock_bh(&ar->mem_lock);

 *len += bitmap_scnprintf(&buf[*len], bufsize - *len,
      ar->mem_bitmap, ar->fw.mem_blocks);

 ADD(buf, *len, bufsize, "]\n");

 ADD(buf, *len, bufsize, "cookies: used:%3d / total:%3d, allocs:%d\n",
     bitmap_weight(ar->mem_bitmap, ar->fw.mem_blocks),
     ar->fw.mem_blocks, atomic_read(&ar->mem_allocs));

 ADD(buf, *len, bufsize, "memory: free:%3d (%3d KiB) / total:%3d KiB)\n",
     atomic_read(&ar->mem_free_blocks),
     (atomic_read(&ar->mem_free_blocks) * ar->fw.mem_block_size) / 1024,
     (ar->fw.mem_blocks * ar->fw.mem_block_size) / 1024);

 spin_unlock_bh(&ar->mem_lock);

 return buf;
}
