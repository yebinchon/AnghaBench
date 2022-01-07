
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcom_task {unsigned int bd_size; scalar_t__ bd; } ;
typedef void bcom_bd ;



__attribute__((used)) static inline struct bcom_bd
*bcom_get_bd(struct bcom_task *tsk, unsigned int index)
{


 return ((void *)tsk->bd) + (index * tsk->bd_size);
}
