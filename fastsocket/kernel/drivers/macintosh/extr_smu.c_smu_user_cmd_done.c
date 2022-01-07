
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_private {int wait; } ;
struct smu_cmd {int dummy; } ;


 int wake_up_all (int *) ;

__attribute__((used)) static void smu_user_cmd_done(struct smu_cmd *cmd, void *misc)
{
 struct smu_private *pp = misc;

 wake_up_all(&pp->wait);
}
