
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NOTIFY_DONE ;
 int VMWDT_OPEN ;
 int clear_bit (int ,int *) ;
 int vmwdt_is_open ;

__attribute__((used)) static int vmwdt_resume(void)
{
 clear_bit(VMWDT_OPEN, &vmwdt_is_open);
 return NOTIFY_DONE;
}
