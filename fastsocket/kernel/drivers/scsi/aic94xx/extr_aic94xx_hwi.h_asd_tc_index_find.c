
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_seq_data {void** tc_index_array; } ;



__attribute__((used)) static inline void *asd_tc_index_find(struct asd_seq_data *seq, int index)
{
 return seq->tc_index_array[index];
}
