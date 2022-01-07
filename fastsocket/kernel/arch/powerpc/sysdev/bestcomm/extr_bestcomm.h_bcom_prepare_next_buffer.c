
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcom_task {int index; } ;
struct bcom_bd {scalar_t__ status; } ;


 struct bcom_bd* bcom_get_bd (struct bcom_task*,int ) ;

__attribute__((used)) static inline struct bcom_bd *
bcom_prepare_next_buffer(struct bcom_task *tsk)
{
 struct bcom_bd *bd;

 bd = bcom_get_bd(tsk, tsk->index);
 bd->status = 0;
 return bd;
}
