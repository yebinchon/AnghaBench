
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;
struct adapter {TYPE_1__ params; } ;



__attribute__((used)) static inline unsigned int mk_adap_vers(const struct adapter *ap)
{
 return 4 | (ap->params.rev << 10) | (1 << 16);
}
