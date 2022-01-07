
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int * data; } ;


 int ENOMEM ;
 int FLASH_AUTH ;
 int FLASH_NO_OP ;
 int GFP_KERNEL ;
 int RTAS_UNKNOWN_SERVICE ;
 int * kzalloc (size_t,int ) ;
 int remove_flash_pde (struct proc_dir_entry*) ;
 int rtas_token (char const*) ;

__attribute__((used)) static int initialize_flash_pde_data(const char *rtas_call_name,
         size_t buf_size,
         struct proc_dir_entry *dp)
{
 int *status;
 int token;

 dp->data = kzalloc(buf_size, GFP_KERNEL);
 if (dp->data == ((void*)0)) {
  remove_flash_pde(dp);
  return -ENOMEM;
 }





 status = (int *) dp->data;
 token = rtas_token(rtas_call_name);
 if (token == RTAS_UNKNOWN_SERVICE)
  *status = FLASH_AUTH;
 else
  *status = FLASH_NO_OP;

 return 0;
}
