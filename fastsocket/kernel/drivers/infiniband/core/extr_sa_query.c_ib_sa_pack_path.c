
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_sa_path_rec {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ib_pack (int ,int ,struct ib_sa_path_rec*,void*) ;
 int path_rec_table ;

void ib_sa_pack_path(struct ib_sa_path_rec *rec, void *attribute)
{
 ib_pack(path_rec_table, ARRAY_SIZE(path_rec_table), rec, attribute);
}
