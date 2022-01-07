
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sys_device {int dummy; } ;


 int BOOTSTRAP_WORDS ;
 int RESUME_BT_ADDR ;
 int RESUME_ENABLE_ADDR ;
 int RESUME_UNKNOWN_ADDR ;
 int RESUME_VECTOR_ADDR ;
 int * phys_to_virt (int ) ;
 int * save_buffer ;

__attribute__((used)) static int mioa701_sys_resume(struct sys_device *sysdev)
{
 int i = 0;
 u32 *mem_resume_vector = phys_to_virt(RESUME_VECTOR_ADDR);
 u32 *mem_resume_enabler = phys_to_virt(RESUME_ENABLE_ADDR);
 u32 *mem_resume_bt = phys_to_virt(RESUME_BT_ADDR);
 u32 *mem_resume_unknown = phys_to_virt(RESUME_UNKNOWN_ADDR);

 for (i = 0; i < BOOTSTRAP_WORDS; i++)
  mem_resume_vector[i] = save_buffer[i];
 *mem_resume_enabler = save_buffer[i++];
 *mem_resume_bt = save_buffer[i++];
 *mem_resume_unknown = save_buffer[i++];

 return 0;
}
