
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcom_task {int outdex; } ;
struct bcom_bd {int status; } ;


 int BCOM_BD_READY ;
 struct bcom_bd* bcom_get_bd (struct bcom_task*,int ) ;
 scalar_t__ bcom_queue_empty (struct bcom_task*) ;

__attribute__((used)) static inline int
bcom_buffer_done(struct bcom_task *tsk)
{
 struct bcom_bd *bd;
 if (bcom_queue_empty(tsk))
  return 0;

 bd = bcom_get_bd(tsk, tsk->outdex);
 return !(bd->status & BCOM_BD_READY);
}
