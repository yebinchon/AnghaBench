
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_common {int dummy; } ;
typedef enum ATH_DEBUG { ____Placeholder_ATH_DEBUG } ATH_DEBUG ;



__attribute__((used)) static inline __attribute__ ((format (printf, 3, 4)))
void _ath_dbg(struct ath_common *common, enum ATH_DEBUG dbg_mask,
      const char *fmt, ...)
{
}
