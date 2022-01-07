
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* bi_end_io ) (TYPE_1__*,int ) ;} ;
struct dm_buffer {TYPE_1__ bio; } ;


 int EIO ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void dmio_complete(unsigned long error, void *context)
{
 struct dm_buffer *b = context;

 b->bio.bi_end_io(&b->bio, error ? -EIO : 0);
}
