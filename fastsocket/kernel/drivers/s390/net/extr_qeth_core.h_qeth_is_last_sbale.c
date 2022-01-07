
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_buffer_element {int eflags; } ;


 int SBAL_EFLAGS_LAST_ENTRY ;

__attribute__((used)) static inline int qeth_is_last_sbale(struct qdio_buffer_element *sbale)
{
 return sbale->eflags & SBAL_EFLAGS_LAST_ENTRY;
}
