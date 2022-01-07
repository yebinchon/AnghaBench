
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_resource {int pdid_table; int qid_table; int tpt_table; } ;


 int c4iw_id_table_free (int *) ;

void c4iw_destroy_resource(struct c4iw_resource *rscp)
{
 c4iw_id_table_free(&rscp->tpt_table);
 c4iw_id_table_free(&rscp->qid_table);
 c4iw_id_table_free(&rscp->pdid_table);
}
