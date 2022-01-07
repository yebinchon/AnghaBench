
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_test {int notify; } ;



__attribute__((used)) static inline void iwl_test_enable_notifications(struct iwl_test *tst,
       bool enable)
{
 tst->notify = enable;
}
