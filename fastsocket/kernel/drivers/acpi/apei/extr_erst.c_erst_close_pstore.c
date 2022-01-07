
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore_info {int dummy; } ;


 int erst_get_record_id_end () ;

__attribute__((used)) static int erst_close_pstore(struct pstore_info *psi)
{
 erst_get_record_id_end();

 return 0;
}
