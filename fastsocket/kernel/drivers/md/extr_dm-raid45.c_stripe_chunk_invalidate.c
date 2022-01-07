
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ flags; } ;
struct stripe_chunk {TYPE_1__ io; } ;



__attribute__((used)) static inline void stripe_chunk_invalidate(struct stripe_chunk *chunk)
{
 chunk->io.flags = 0;
}
