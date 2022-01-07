
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pgm_check_occured ;

__attribute__((used)) static void cio_reset_pgm_check_handler(void)
{
 pgm_check_occured = 1;
}
