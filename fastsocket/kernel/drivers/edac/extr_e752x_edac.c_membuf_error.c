
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int do_membuf_error (int ) ;

__attribute__((used)) static inline void membuf_error(u8 errors, int *error_found, int handle_error)
{
 *error_found = 1;

 if (handle_error)
  do_membuf_error(errors);
}
