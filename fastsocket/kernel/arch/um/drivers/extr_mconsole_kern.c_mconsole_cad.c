
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc_request {int dummy; } ;


 int ctrl_alt_del () ;
 int mconsole_reply (struct mc_request*,char*,int ,int ) ;

void mconsole_cad(struct mc_request *req)
{
 mconsole_reply(req, "", 0, 0);
 ctrl_alt_del();
}
