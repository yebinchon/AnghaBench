#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int count; TYPE_1__* ips; scalar_t__ index; } ;
struct TYPE_4__ {char* address; scalar_t__ type; } ;
typedef  TYPE_2__ FDFSMultiIP ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FDFS_IP_TYPE_UNKNOWN ; 
 int FDFS_MULTI_IP_MAX_COUNT ; 
 scalar_t__ INADDR_NONE ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  h_errno ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int const,char*,char*,...) ; 
 int FUNC4 (char*,char,char**,int) ; 

int FUNC5(char *ip_str, FDFSMultiIP *ip_addrs,
        char *error_info, const int error_size, const bool resolve)
{
    char *hosts[FDFS_MULTI_IP_MAX_COUNT];
    int i;

    ip_addrs->index = 0;
    ip_addrs->count = FUNC4(ip_str, ',', hosts, FDFS_MULTI_IP_MAX_COUNT);
    for (i=0; i<ip_addrs->count; i++)
    {
        if (resolve)
        {
            if (FUNC1(hosts[i], ip_addrs->ips[i].address,
                        sizeof(ip_addrs->ips[i].address)) == INADDR_NONE)
            {
                FUNC3(error_info, error_size,
                        "host \"%s\" is invalid, error info: %s",
                        hosts[i], FUNC2(h_errno));
                return EINVAL;
            }
        }
        else
        {
            FUNC3(ip_addrs->ips[i].address,
                    sizeof(ip_addrs->ips[i].address), "%s", hosts[i]);
        }

        ip_addrs->ips[i].type = FUNC0(ip_addrs->ips[i].address);
        if (ip_addrs->ips[i].type == FDFS_IP_TYPE_UNKNOWN)
        {
            FUNC3(error_info, error_size,
                    "ip address \"%s\" is invalid",
                    ip_addrs->ips[i].address);
            return EINVAL;
        }
    }

    *error_info = '\0';
    return 0;
}