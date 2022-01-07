; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_probe_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_probe_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__, i32*, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.vio_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.veth_port = type { i32, i32, i32, %struct.device*, i64, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"local-mac-address\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"mac-address\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Unable to fetch MAC address from device tree.\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Unable to allocate net_device structure!\0A\00", align 1
@HVMAXARCHITECTEDLPS = common dso_local global i32 0, align 4
@this_lp = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@VETH_MAX_MTU = common dso_local global i32 0, align 4
@veth_netdev_ops = common dso_local global i32 0, align 4
@ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Failed registering net device for vlan%d.\0A\00", align 1
@veth_port_ktype = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"veth_port\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Failed adding port for %s to sysfs.\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"%s attached to iSeries vlan %d (LPAR map = 0x%.4X)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (i32, %struct.vio_dev*)* @veth_probe_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @veth_probe_one(i32 %0, %struct.vio_dev* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vio_dev*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.veth_port*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.vio_dev* %1, %struct.vio_dev** %5, align 8
  %13 = load %struct.vio_dev*, %struct.vio_dev** %5, align 8
  %14 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.vio_dev*, %struct.vio_dev** %5, align 8
  %16 = call i8* @vio_get_attribute(%struct.vio_dev* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.vio_dev*, %struct.vio_dev** %5, align 8
  %21 = call i8* @vio_get_attribute(%struct.vio_dev* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %21, i8** %11, align 8
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i8*, i8** %11, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 (i8*, ...) @veth_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %132

27:                                               ; preds = %22
  %28 = call %struct.net_device* @alloc_etherdev(i32 40)
  store %struct.net_device* %28, %struct.net_device** %6, align 8
  %29 = load %struct.net_device*, %struct.net_device** %6, align 8
  %30 = icmp ne %struct.net_device* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @veth_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %132

33:                                               ; preds = %27
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = call %struct.veth_port* @netdev_priv(%struct.net_device* %34)
  store %struct.veth_port* %35, %struct.veth_port** %7, align 8
  %36 = load %struct.veth_port*, %struct.veth_port** %7, align 8
  %37 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %36, i32 0, i32 6
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.veth_port*, %struct.veth_port** %7, align 8
  %40 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %39, i32 0, i32 5
  %41 = call i32 @rwlock_init(i32* %40)
  %42 = load %struct.veth_port*, %struct.veth_port** %7, align 8
  %43 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %69, %33
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @HVMAXARCHITECTEDLPS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @this_lp, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %69

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @HvLpConfig_getVirtualLanIndexMapForLp(i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %4, align 4
  %58 = ashr i32 32768, %57
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load i32, i32* %9, align 4
  %63 = shl i32 1, %62
  %64 = load %struct.veth_port*, %struct.veth_port** %7, align 8
  %65 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %61, %53
  br label %69

69:                                               ; preds = %68, %52
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %44

72:                                               ; preds = %44
  %73 = load %struct.device*, %struct.device** %8, align 8
  %74 = load %struct.veth_port*, %struct.veth_port** %7, align 8
  %75 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %74, i32 0, i32 3
  store %struct.device* %73, %struct.device** %75, align 8
  %76 = load %struct.net_device*, %struct.net_device** %6, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i32, i32* @ETH_ALEN, align 4
  %81 = call i32 @memcpy(i32* %78, i8* %79, i32 %80)
  %82 = load i32, i32* @VETH_MAX_MTU, align 4
  %83 = load %struct.net_device*, %struct.net_device** %6, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load %struct.veth_port*, %struct.veth_port** %7, align 8
  %86 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %85, i32 0, i32 2
  %87 = load i8*, i8** %11, align 8
  %88 = load i32, i32* @ETH_ALEN, align 4
  %89 = call i32 @memcpy(i32* %86, i8* %87, i32 %88)
  %90 = load %struct.net_device*, %struct.net_device** %6, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 2
  store i32* @veth_netdev_ops, i32** %91, align 8
  %92 = load %struct.net_device*, %struct.net_device** %6, align 8
  %93 = call i32 @SET_ETHTOOL_OPS(%struct.net_device* %92, i32* @ops)
  %94 = load %struct.net_device*, %struct.net_device** %6, align 8
  %95 = load %struct.device*, %struct.device** %8, align 8
  %96 = call i32 @SET_NETDEV_DEV(%struct.net_device* %94, %struct.device* %95)
  %97 = load %struct.net_device*, %struct.net_device** %6, align 8
  %98 = call i32 @register_netdev(%struct.net_device* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %72
  %102 = load i32, i32* %4, align 4
  %103 = call i32 (i8*, ...) @veth_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  %104 = load %struct.net_device*, %struct.net_device** %6, align 8
  %105 = call i32 @free_netdev(%struct.net_device* %104)
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %132

106:                                              ; preds = %72
  %107 = load %struct.veth_port*, %struct.veth_port** %7, align 8
  %108 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %107, i32 0, i32 1
  %109 = call i32 @kobject_init(i32* %108, i32* @veth_port_ktype)
  %110 = load %struct.veth_port*, %struct.veth_port** %7, align 8
  %111 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %110, i32 0, i32 1
  %112 = load %struct.net_device*, %struct.net_device** %6, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = call i64 @kobject_add(i32* %111, i32* %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %116 = icmp ne i64 0, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %106
  %118 = load %struct.net_device*, %struct.net_device** %6, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 (i8*, ...) @veth_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %117, %106
  %123 = load %struct.net_device*, %struct.net_device** %6, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = load %struct.veth_port*, %struct.veth_port** %7, align 8
  %128 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @veth_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %125, i32 %126, i32 %129)
  %131 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %131, %struct.net_device** %3, align 8
  br label %132

132:                                              ; preds = %122, %101, %31, %25
  %133 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %133
}

declare dso_local i8* @vio_get_attribute(%struct.vio_dev*, i8*, i32*) #1

declare dso_local i32 @veth_error(i8*, ...) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.veth_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @HvLpConfig_getVirtualLanIndexMapForLp(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @SET_ETHTOOL_OPS(%struct.net_device*, i32*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @kobject_init(i32*, i32*) #1

declare dso_local i64 @kobject_add(i32*, i32*, i8*) #1

declare dso_local i32 @veth_info(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
