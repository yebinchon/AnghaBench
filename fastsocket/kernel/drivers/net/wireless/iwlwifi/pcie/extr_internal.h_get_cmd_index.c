
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct iwl_queue {int n_window; } ;



__attribute__((used)) static inline u8 get_cmd_index(struct iwl_queue *q, u32 index)
{
 return index & (q->n_window - 1);
}
