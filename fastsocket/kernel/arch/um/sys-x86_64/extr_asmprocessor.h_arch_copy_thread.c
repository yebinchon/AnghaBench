
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch_thread {int fs; } ;



__attribute__((used)) static inline void arch_copy_thread(struct arch_thread *from,
                                    struct arch_thread *to)
{
 to->fs = from->fs;
}
