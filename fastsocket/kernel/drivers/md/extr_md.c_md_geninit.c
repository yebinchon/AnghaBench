
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mdp_super_t ;


 int S_IRUGO ;
 int md_seq_fops ;
 int pr_debug (char*,int) ;
 int proc_create (char*,int ,int *,int *) ;

__attribute__((used)) static void md_geninit(void)
{
 pr_debug("md: sizeof(mdp_super_t) = %d\n", (int)sizeof(mdp_super_t));

 proc_create("mdstat", S_IRUGO, ((void*)0), &md_seq_fops);
}
