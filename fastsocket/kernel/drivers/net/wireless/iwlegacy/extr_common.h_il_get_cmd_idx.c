
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct il_queue {int n_win; } ;



__attribute__((used)) static inline u8
il_get_cmd_idx(struct il_queue *q, u32 idx, int is_huge)
{





 if (is_huge)
  return q->n_win;


 return idx & (q->n_win - 1);
}
