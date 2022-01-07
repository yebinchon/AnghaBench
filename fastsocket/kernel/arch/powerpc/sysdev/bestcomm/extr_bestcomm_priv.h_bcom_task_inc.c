
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 size_t BCOM_MAX_VAR ;
 int * bcom_task_var (int) ;

__attribute__((used)) static inline u32 *
bcom_task_inc(int task)
{
 return &bcom_task_var(task)[BCOM_MAX_VAR];
}
