
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ECONNREFUSED ;
 scalar_t__ errno ;
 int fdfs_client_init (char const*) ;
 int * pTrackerServer ;
 int * tracker_get_connection () ;

int dfs_init(const int proccess_index, const char *conf_filename)
{
 int result;
 if ((result=fdfs_client_init(conf_filename)) != 0)
 {
  return result;
 }

 pTrackerServer = tracker_get_connection();
 if (pTrackerServer == ((void*)0))
 {
  return errno != 0 ? errno : ECONNREFUSED;
 }

 return 0;
}
