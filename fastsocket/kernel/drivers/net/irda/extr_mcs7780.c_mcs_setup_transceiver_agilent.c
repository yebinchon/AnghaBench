
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcs_cb {int dummy; } ;


 int IRDA_WARNING (char*) ;

__attribute__((used)) static inline int mcs_setup_transceiver_agilent(struct mcs_cb *mcs)
{
 IRDA_WARNING("This transceiver type is not supported yet.\n");
 return 1;
}
