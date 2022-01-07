
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_buffer {int dummy; } ;
struct dm_block {int dummy; } ;



__attribute__((used)) static struct dm_buffer *to_buffer(struct dm_block *b)
{
 return (struct dm_buffer *) b;
}
