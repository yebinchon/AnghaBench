
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int get_children_props (struct device_node*,int const**,int const**,int const**,int const**) ;
 int is_php_type (char*) ;

__attribute__((used)) static int is_php_dn(struct device_node *dn, const int **indexes,
  const int **names, const int **types, const int **power_domains)
{
 const int *drc_types;
 int rc;

 rc = get_children_props(dn, indexes, names, &drc_types, power_domains);
 if (rc < 0)
  return 0;

 if (!is_php_type((char *) &drc_types[1]))
  return 0;

 *types = drc_types;
 return 1;
}
