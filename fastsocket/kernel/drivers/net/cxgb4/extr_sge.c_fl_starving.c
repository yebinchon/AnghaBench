
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_fl {scalar_t__ avail; scalar_t__ pend_cred; } ;


 scalar_t__ FL_STARVE_THRES ;

__attribute__((used)) static inline bool fl_starving(const struct sge_fl *fl)
{
 return fl->avail - fl->pend_cred <= FL_STARVE_THRES;
}
