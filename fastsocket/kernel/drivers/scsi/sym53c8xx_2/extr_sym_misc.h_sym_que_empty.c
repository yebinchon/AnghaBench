
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_quehead {struct sym_quehead* flink; } ;



__attribute__((used)) static inline int sym_que_empty(struct sym_quehead *head)
{
 return head->flink == head;
}
