
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvbios_init {int execute; } ;



__attribute__((used)) static inline bool
init_exec(struct nvbios_init *init)
{
 return (init->execute == 1) || ((init->execute & 5) == 5);
}
