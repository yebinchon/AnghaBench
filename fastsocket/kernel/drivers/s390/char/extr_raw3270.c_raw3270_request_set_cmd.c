
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int cmd_code; } ;
struct raw3270_request {TYPE_1__ ccw; } ;



void
raw3270_request_set_cmd(struct raw3270_request *rq, u8 cmd)
{
 rq->ccw.cmd_code = cmd;
}
