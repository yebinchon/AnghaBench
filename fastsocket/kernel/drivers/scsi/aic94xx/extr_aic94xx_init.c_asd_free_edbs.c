
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_seq_data {int num_edbs; int * edb_arr; } ;
struct asd_ha_struct {struct asd_seq_data seq; } ;


 int asd_free_coherent (struct asd_ha_struct*,int ) ;
 int kfree (int *) ;

__attribute__((used)) static void asd_free_edbs(struct asd_ha_struct *asd_ha)
{
 struct asd_seq_data *seq = &asd_ha->seq;
 int i;

 for (i = 0; i < seq->num_edbs; i++)
  asd_free_coherent(asd_ha, seq->edb_arr[i]);
 kfree(seq->edb_arr);
 seq->edb_arr = ((void*)0);
}
