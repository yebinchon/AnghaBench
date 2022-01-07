
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct calling_interface_buffer {int dummy; } ;


 int buffer ;
 int buffer_mutex ;
 int memset (int ,int ,int) ;
 int mutex_lock (int *) ;

__attribute__((used)) static void get_buffer(void)
{
 mutex_lock(&buffer_mutex);
 memset(buffer, 0, sizeof(struct calling_interface_buffer));
}
