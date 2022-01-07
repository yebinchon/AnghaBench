
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cell_key {scalar_t__ virtual; scalar_t__ dev; scalar_t__ block; } ;



__attribute__((used)) static int keys_equal(struct dm_cell_key *lhs, struct dm_cell_key *rhs)
{
        return (lhs->virtual == rhs->virtual) &&
         (lhs->dev == rhs->dev) &&
         (lhs->block == rhs->block);
}
