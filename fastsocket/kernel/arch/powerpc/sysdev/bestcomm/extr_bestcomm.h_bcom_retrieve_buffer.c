
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcom_task {size_t outdex; void** cookie; } ;
struct bcom_bd {int status; } ;


 size_t _bcom_next_outdex (struct bcom_task*) ;
 struct bcom_bd* bcom_get_bd (struct bcom_task*,size_t) ;

__attribute__((used)) static inline void *
bcom_retrieve_buffer(struct bcom_task *tsk, u32 *p_status, struct bcom_bd **p_bd)
{
 void *cookie = tsk->cookie[tsk->outdex];
 struct bcom_bd *bd = bcom_get_bd(tsk, tsk->outdex);

 if (p_status)
  *p_status = bd->status;
 if (p_bd)
  *p_bd = bd;
 tsk->outdex = _bcom_next_outdex(tsk);
 return cookie;
}
