
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_validate_flash_t {scalar_t__ status; scalar_t__ update_results; char* buf; } ;


 scalar_t__ VALIDATE_CUR_UNKNOWN ;
 scalar_t__ VALIDATE_TMP_UPDATE ;
 scalar_t__ snprintf (char*,int,char*,char*) ;
 int sprintf (char*,char*,scalar_t__) ;

__attribute__((used)) static int get_validate_flash_msg(struct rtas_validate_flash_t *args_buf,
                     char *msg, int msglen)
{
 int n;

 if (args_buf->status >= VALIDATE_TMP_UPDATE) {
  n = sprintf(msg, "%d\n", args_buf->update_results);
  if ((args_buf->update_results >= VALIDATE_CUR_UNKNOWN) ||
      (args_buf->update_results == VALIDATE_TMP_UPDATE))
   n += snprintf(msg + n, msglen - n, "%s\n",
     args_buf->buf);
 } else {
  n = sprintf(msg, "%d\n", args_buf->status);
 }
 return n;
}
