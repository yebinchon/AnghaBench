
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sigvalue; int signal; } ;
typedef TYPE_1__ asysigs_t ;


 int SG_DTR ;
 int SG_RTS ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void stli_mkasysigs(asysigs_t *sp, int dtr, int rts)
{
 memset(sp, 0, sizeof(asysigs_t));
 if (dtr >= 0) {
  sp->signal |= SG_DTR;
  sp->sigvalue |= ((dtr > 0) ? SG_DTR : 0);
 }
 if (rts >= 0) {
  sp->signal |= SG_RTS;
  sp->sigvalue |= ((rts > 0) ? SG_RTS : 0);
 }
}
