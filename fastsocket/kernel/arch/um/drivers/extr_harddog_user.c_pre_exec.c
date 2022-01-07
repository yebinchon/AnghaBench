
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dog_data {int * close_me; int stdout; int stdin; } ;


 int close (int ) ;
 int dup2 (int ,int) ;

__attribute__((used)) static void pre_exec(void *d)
{
 struct dog_data *data = d;

 dup2(data->stdin, 0);
 dup2(data->stdout, 1);
 dup2(data->stdout, 2);
 close(data->stdin);
 close(data->stdout);
 close(data->close_me[0]);
 close(data->close_me[1]);
}
