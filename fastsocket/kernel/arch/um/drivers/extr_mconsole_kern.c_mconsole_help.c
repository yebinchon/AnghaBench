
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc_request {int dummy; } ;


 int UML_MCONSOLE_HELPTEXT ;
 int mconsole_reply (struct mc_request*,int ,int ,int ) ;

void mconsole_help(struct mc_request *req)
{
 mconsole_reply(req, UML_MCONSOLE_HELPTEXT, 0, 0);
}
