
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_userspace_memory_region {int dummy; } ;
struct kvm_memory_slot {int npages; scalar_t__ id; unsigned long userspace_addr; int rmap; } ;
struct kvm {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mmap_sem; } ;


 scalar_t__ IS_ERR (void*) ;
 scalar_t__ KVM_MEMORY_SLOTS ;
 int MAP_ANONYMOUS ;
 int MAP_PRIVATE ;
 int MAP_SHARED ;
 int PAGE_SIZE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int PTR_ERR (void*) ;
 TYPE_2__* current ;
 unsigned long do_mmap (int *,int ,int,int,int,int ) ;
 int down_write (int *) ;
 int up_write (int *) ;

int kvm_arch_prepare_memory_region(struct kvm *kvm,
    struct kvm_memory_slot *memslot,
    struct kvm_memory_slot old,
    struct kvm_userspace_memory_region *mem,
    int user_alloc)
{
 int npages = memslot->npages;
 int map_flags = MAP_PRIVATE | MAP_ANONYMOUS;


 if (memslot->id >= KVM_MEMORY_SLOTS)
  map_flags = MAP_SHARED | MAP_ANONYMOUS;




 if (!user_alloc) {
  if (npages && !old.rmap) {
   unsigned long userspace_addr;

   down_write(&current->mm->mmap_sem);
   userspace_addr = do_mmap(((void*)0), 0,
       npages * PAGE_SIZE,
       PROT_READ | PROT_WRITE,
       map_flags,
       0);
   up_write(&current->mm->mmap_sem);

   if (IS_ERR((void *)userspace_addr))
    return PTR_ERR((void *)userspace_addr);

   memslot->userspace_addr = userspace_addr;
  }
 }


 return 0;
}
