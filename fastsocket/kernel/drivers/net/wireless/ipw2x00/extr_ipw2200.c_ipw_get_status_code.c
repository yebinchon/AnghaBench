
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int status; char const* reason; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* ipw_status_codes ;

__attribute__((used)) static const char *ipw_get_status_code(u16 status)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(ipw_status_codes); i++)
  if (ipw_status_codes[i].status == (status & 0xff))
   return ipw_status_codes[i].reason;
 return "Unknown status value.";
}
