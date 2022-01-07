
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int dummy; } ;


 int ADBREQ_NOSEND ;
 int ADB_READREG (scalar_t__,int ) ;
 int adb_request (struct adb_request*,int *,int ,int,int ) ;
 int autopoll_devs ;
 int * current_req ;
 scalar_t__ ffs (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int macii_write (struct adb_request*) ;

__attribute__((used)) static int macii_autopoll(int devs)
{
 static struct adb_request req;
 unsigned long flags;
 int err = 0;


 autopoll_devs = devs & 0xFFFE;

 if (!autopoll_devs) return 0;

 local_irq_save(flags);

 if (current_req == ((void*)0)) {



  adb_request(&req, ((void*)0), ADBREQ_NOSEND, 1,
              ADB_READREG(ffs(autopoll_devs) - 1, 0));
  err = macii_write(&req);
 }

 local_irq_restore(flags);
 return err;
}
