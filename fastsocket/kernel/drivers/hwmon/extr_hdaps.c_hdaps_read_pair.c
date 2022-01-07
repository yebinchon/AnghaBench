
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __hdaps_read_pair (unsigned int,unsigned int,int*,int*) ;
 int hdaps_mtx ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hdaps_read_pair(unsigned int port1, unsigned int port2,
      int *val1, int *val2)
{
 int ret;

 mutex_lock(&hdaps_mtx);
 ret = __hdaps_read_pair(port1, port2, val1, val2);
 mutex_unlock(&hdaps_mtx);

 return ret;
}
