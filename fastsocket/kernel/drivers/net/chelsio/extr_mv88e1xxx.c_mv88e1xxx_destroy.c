
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int kfree (struct cphy*) ;

__attribute__((used)) static void mv88e1xxx_destroy(struct cphy *cphy)
{
 kfree(cphy);
}
