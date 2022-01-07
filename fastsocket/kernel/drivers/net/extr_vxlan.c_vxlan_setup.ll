; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i64, i32, i32*, i64 }
%struct.vxlan_dev = type { i32, i32, i32*, %struct.net_device*, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ETH_HLEN = common dso_local global i64 0, align 8
@VXLAN_HEADROOM = common dso_local global i64 0, align 8
@vxlan_netdev_ops = common dso_local global i32 0, align 4
@free_netdev = common dso_local global i32 0, align 4
@vxlan_type = common dso_local global i32 0, align 4
@NETIF_F_LLTX = common dso_local global i32 0, align 4
@NETIF_F_NETNS_LOCAL = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_GSO_SOFTWARE = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_RX = common dso_local global i32 0, align 4
@IFF_XMIT_DST_RELEASE = common dso_local global i32 0, align 4
@IFF_LIVE_ADDR_CHANGE = common dso_local global i32 0, align 4
@vxlan_fdb_add = common dso_local global i32 0, align 4
@vxlan_fdb_delete = common dso_local global i32 0, align 4
@vxlan_fdb_dump = common dso_local global i32 0, align 4
@vxlan_igmp_join = common dso_local global i32 0, align 4
@vxlan_igmp_leave = common dso_local global i32 0, align 4
@vxlan_sock_work = common dso_local global i32 0, align 4
@vxlan_cleanup = common dso_local global i32 0, align 4
@vxlan_port = common dso_local global i32 0, align 4
@FDB_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @vxlan_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.vxlan_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %7)
  store %struct.vxlan_dev* %8, %struct.vxlan_dev** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @eth_hw_addr_random(%struct.net_device* %9)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @ether_setup(%struct.net_device* %11)
  %13 = load i64, i64* @ETH_HLEN, align 8
  %14 = load i64, i64* @VXLAN_HEADROOM, align 8
  %15 = add nsw i64 %13, %14
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 6
  store i64 %15, i64* %17, align 8
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 5
  store i32* @vxlan_netdev_ops, i32** %19, align 8
  %20 = load i32, i32* @free_netdev, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @SET_NETDEV_DEVTYPE(%struct.net_device* %23, i32* @vxlan_type)
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @NETIF_F_LLTX, align 4
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* @NETIF_F_NETNS_LOCAL, align 4
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @NETIF_F_SG, align 4
  %38 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* @NETIF_F_GSO_SOFTWARE, align 4
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @NETIF_F_HW_VLAN_TX, align 4
  %60 = load i32, i32* @NETIF_F_HW_VLAN_RX, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* @IFF_XMIT_DST_RELEASE, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* @IFF_LIVE_ADDR_CHANGE, align 4
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = call %struct.TYPE_3__* @netdev_extended(%struct.net_device* %73)
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %72
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* @vxlan_fdb_add, align 4
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = call %struct.TYPE_3__* @netdev_extended(%struct.net_device* %79)
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* @vxlan_fdb_delete, align 4
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = call %struct.TYPE_3__* @netdev_extended(%struct.net_device* %83)
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @vxlan_fdb_dump, align 4
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = call %struct.TYPE_3__* @netdev_extended(%struct.net_device* %87)
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  %90 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %91 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %90, i32 0, i32 10
  %92 = call i32 @INIT_LIST_HEAD(i32* %91)
  %93 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %94 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %93, i32 0, i32 9
  %95 = call i32 @spin_lock_init(i32* %94)
  %96 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %97 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %96, i32 0, i32 8
  %98 = load i32, i32* @vxlan_igmp_join, align 4
  %99 = call i32 @INIT_WORK(i32* %97, i32 %98)
  %100 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %101 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %100, i32 0, i32 7
  %102 = load i32, i32* @vxlan_igmp_leave, align 4
  %103 = call i32 @INIT_WORK(i32* %101, i32 %102)
  %104 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %105 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %104, i32 0, i32 6
  %106 = load i32, i32* @vxlan_sock_work, align 4
  %107 = call i32 @INIT_WORK(i32* %105, i32 %106)
  %108 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %109 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %108, i32 0, i32 5
  %110 = call i32 @init_timer_deferrable(%struct.TYPE_4__* %109)
  %111 = load i32, i32* @vxlan_cleanup, align 4
  %112 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %113 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 8
  %115 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %116 = ptrtoint %struct.vxlan_dev* %115 to i64
  %117 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %118 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i64 %116, i64* %119, align 8
  %120 = call i32 @inet_get_local_port_range(i32* %5, i32* %6)
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %123 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %126 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @vxlan_port, align 4
  %128 = call i32 @htons(i32 %127)
  %129 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %130 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  %131 = load %struct.net_device*, %struct.net_device** %2, align 8
  %132 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %133 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %132, i32 0, i32 3
  store %struct.net_device* %131, %struct.net_device** %133, align 8
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %146, %1
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @FDB_HASH_SIZE, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %134
  %139 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %140 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = call i32 @INIT_HLIST_HEAD(i32* %144)
  br label %146

146:                                              ; preds = %138
  %147 = load i32, i32* %4, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %4, align 4
  br label %134

149:                                              ; preds = %134
  ret void
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @ether_setup(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEVTYPE(%struct.net_device*, i32*) #1

declare dso_local %struct.TYPE_3__* @netdev_extended(%struct.net_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_timer_deferrable(%struct.TYPE_4__*) #1

declare dso_local i32 @inet_get_local_port_range(i32*, i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
