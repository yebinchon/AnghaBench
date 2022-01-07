
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void command_get(struct command *cmd)
{
 kref_get(&cmd->kref);
}
