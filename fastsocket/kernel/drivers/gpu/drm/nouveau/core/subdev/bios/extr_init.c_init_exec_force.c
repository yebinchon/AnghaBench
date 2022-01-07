
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvbios_init {int execute; } ;



__attribute__((used)) static inline void
init_exec_force(struct nvbios_init *init, bool exec)
{
 if (exec) init->execute |= 0x04;
 else init->execute &= 0xfb;
}
