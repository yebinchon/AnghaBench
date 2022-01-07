
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_context {int dummy; } ;


 int STORAGE_ACCESS_HEADER_LEN ;
 int STORAGE_ACCESS_HEADER_STR ;
 int log_header (struct log_context*,int ,int ) ;

void storage_set_access_log_header(struct log_context *pContext)
{



    log_header(pContext, "client_ip action filename status time_used_ms req_len resp_len", (sizeof("client_ip action filename status time_used_ms req_len resp_len") - 1));
}
