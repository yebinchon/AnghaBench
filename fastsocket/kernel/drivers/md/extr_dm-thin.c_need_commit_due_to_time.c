
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {scalar_t__ last_commit_jiffies; } ;


 scalar_t__ COMMIT_PERIOD ;
 scalar_t__ jiffies ;

__attribute__((used)) static int need_commit_due_to_time(struct pool *pool)
{
 return jiffies < pool->last_commit_jiffies ||
        jiffies > pool->last_commit_jiffies + COMMIT_PERIOD;
}
