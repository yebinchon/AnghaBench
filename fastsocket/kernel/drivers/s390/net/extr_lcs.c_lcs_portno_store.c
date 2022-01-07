
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {int portno; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 struct lcs_card* dev_get_drvdata (struct device*) ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static ssize_t
lcs_portno_store (struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
        struct lcs_card *card;
        int value;

 card = dev_get_drvdata(dev);

        if (!card)
                return 0;

        sscanf(buf, "%u", &value);

        card->portno = value;

        return count;

}
