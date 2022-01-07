
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long data; scalar_t__ expires; int function; } ;
struct zfcp_fsf_req {TYPE_1__ timer; scalar_t__ erp_action; } ;


 int BUG_ON (int) ;
 int HZ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int zfcp_erp_timeout_handler ;

__attribute__((used)) static void zfcp_fsf_start_erp_timer(struct zfcp_fsf_req *fsf_req)
{
 BUG_ON(!fsf_req->erp_action);
 fsf_req->timer.function = zfcp_erp_timeout_handler;
 fsf_req->timer.data = (unsigned long) fsf_req->erp_action;
 fsf_req->timer.expires = jiffies + 30 * HZ;
 add_timer(&fsf_req->timer);
}
