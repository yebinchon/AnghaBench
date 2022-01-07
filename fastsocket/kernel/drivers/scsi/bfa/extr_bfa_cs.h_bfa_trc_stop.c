
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_trc_mod_s {int stopped; } ;



__attribute__((used)) static inline void
bfa_trc_stop(struct bfa_trc_mod_s *trcm)
{
 trcm->stopped = 1;
}
