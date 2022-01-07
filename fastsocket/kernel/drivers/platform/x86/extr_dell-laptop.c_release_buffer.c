
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buffer_mutex ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void release_buffer(void)
{
 mutex_unlock(&buffer_mutex);
}
