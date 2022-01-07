
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int dummy; } ;
struct mmc_command {int* resp; int error; } ;


 int EILSEQ ;
 scalar_t__ WBSD_IDX_RESP1 ;
 scalar_t__ WBSD_IDX_RESP2 ;
 scalar_t__ WBSD_IDX_RESP3 ;
 scalar_t__ WBSD_IDX_RESP4 ;
 scalar_t__ WBSD_IDX_RSPLEN ;
 int WBSD_RSP_LONG ;
 int wbsd_read_index (struct wbsd_host*,scalar_t__) ;

__attribute__((used)) static inline void wbsd_get_long_reply(struct wbsd_host *host,
 struct mmc_command *cmd)
{
 int i;




 if (wbsd_read_index(host, WBSD_IDX_RSPLEN) != WBSD_RSP_LONG) {
  cmd->error = -EILSEQ;
  return;
 }

 for (i = 0; i < 4; i++) {
  cmd->resp[i] =
   wbsd_read_index(host, WBSD_IDX_RESP1 + i * 4) << 24;
  cmd->resp[i] |=
   wbsd_read_index(host, WBSD_IDX_RESP2 + i * 4) << 16;
  cmd->resp[i] |=
   wbsd_read_index(host, WBSD_IDX_RESP3 + i * 4) << 8;
  cmd->resp[i] |=
   wbsd_read_index(host, WBSD_IDX_RESP4 + i * 4) << 0;
 }
}
