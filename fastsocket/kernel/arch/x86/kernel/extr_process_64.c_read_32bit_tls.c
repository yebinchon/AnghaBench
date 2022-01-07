
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * tls_array; } ;
struct task_struct {TYPE_1__ thread; } ;


 int get_desc_base (int *) ;

__attribute__((used)) static inline u32 read_32bit_tls(struct task_struct *t, int tls)
{
 return get_desc_base(&t->thread.tls_array[tls]);
}
