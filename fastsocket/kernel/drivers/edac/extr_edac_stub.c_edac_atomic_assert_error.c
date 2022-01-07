
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int edac_err_assert ;

void edac_atomic_assert_error(void)
{
 edac_err_assert++;
}
