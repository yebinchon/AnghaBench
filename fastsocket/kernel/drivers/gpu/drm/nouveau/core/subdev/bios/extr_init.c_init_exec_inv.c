
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvbios_init {int execute; } ;



__attribute__((used)) static inline void
init_exec_inv(struct nvbios_init *init)
{
 init->execute ^= 0x02;
}
