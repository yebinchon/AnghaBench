
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxdb {int dummy; } ;


 int vfree (struct rxdb*) ;

__attribute__((used)) static void bdx_rxdb_destroy(struct rxdb *db)
{
 vfree(db);
}
