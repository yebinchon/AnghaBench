
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_seq_data {int tc_index_bitmap; int ** tc_index_array; } ;


 int clear_bit (int,int ) ;

__attribute__((used)) static inline void asd_tc_index_release(struct asd_seq_data *seq, int index)
{
 seq->tc_index_array[index] = ((void*)0);
 clear_bit(index, seq->tc_index_bitmap);
}
