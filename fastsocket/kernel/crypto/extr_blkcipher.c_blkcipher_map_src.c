
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr; } ;
struct TYPE_4__ {TYPE_1__ virt; } ;
struct blkcipher_walk {int in; TYPE_2__ src; } ;


 int scatterwalk_map (int *,int ) ;

__attribute__((used)) static inline void blkcipher_map_src(struct blkcipher_walk *walk)
{
 walk->src.virt.addr = scatterwalk_map(&walk->in, 0);
}
