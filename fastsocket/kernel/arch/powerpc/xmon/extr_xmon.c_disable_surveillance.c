
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_args {scalar_t__ token; int nargs; int nret; scalar_t__* args; scalar_t__* rets; } ;


 scalar_t__ RTAS_UNKNOWN_SERVICE ;
 scalar_t__ SURVEILLANCE_TOKEN ;
 int __pa (struct rtas_args*) ;
 int enter_rtas (int ) ;
 scalar_t__ rtas_token (char*) ;

__attribute__((used)) static inline void disable_surveillance(void)
{
}
