
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_manage_flash_t {int status; int op; } ;
typedef int s32 ;


 scalar_t__ rtas_busy_delay (int ) ;
 int rtas_call (int ,int,int,int *,int ) ;
 int rtas_token (char*) ;

__attribute__((used)) static void manage_flash(struct rtas_manage_flash_t *args_buf)
{
 s32 rc;

 do {
  rc = rtas_call(rtas_token("ibm,manage-flash-image"), 1,
          1, ((void*)0), args_buf->op);
 } while (rtas_busy_delay(rc));

 args_buf->status = rc;
}
