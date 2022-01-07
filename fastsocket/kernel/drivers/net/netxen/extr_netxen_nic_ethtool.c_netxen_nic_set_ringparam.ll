; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ethtool.c_netxen_nic_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ethtool.c_netxen_nic_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i64 }
%struct.netxen_adapter = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@MAX_RCV_DESCRIPTORS_10G = common dso_local global i64 0, align 8
@MAX_JUMBO_RCV_DESCRIPTORS_10G = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NETXEN_NIC_GBE = common dso_local global i64 0, align 8
@MAX_RCV_DESCRIPTORS_1G = common dso_local global i64 0, align 8
@MIN_RCV_DESCRIPTORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@MIN_JUMBO_DESCRIPTORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"rx jumbo\00", align 1
@MIN_CMD_DESCRIPTORS = common dso_local global i32 0, align 4
@MAX_CMD_DESCRIPTORS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @netxen_nic_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_nic_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.netxen_adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.netxen_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.netxen_adapter* %13, %struct.netxen_adapter** %6, align 8
  %14 = load i64, i64* @MAX_RCV_DESCRIPTORS_10G, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* @MAX_JUMBO_RCV_DESCRIPTORS_10G, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @NX_IS_REVISION_P2(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %92

25:                                               ; preds = %2
  %26 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %92

33:                                               ; preds = %25
  %34 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %35 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NETXEN_NIC_GBE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i64, i64* @MAX_RCV_DESCRIPTORS_1G, align 8
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* @MAX_JUMBO_RCV_DESCRIPTORS_10G, align 8
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %40, %33
  %44 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MIN_RCV_DESCRIPTORS, align 4
  %48 = load i64, i64* %7, align 8
  %49 = call i64 @netxen_validate_ringparam(i32 %46, i32 %47, i64 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %49, i64* %9, align 8
  %50 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MIN_JUMBO_DESCRIPTORS, align 4
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @netxen_validate_ringparam(i32 %52, i32 %53, i64 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i64 %55, i64* %10, align 8
  %56 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MIN_CMD_DESCRIPTORS, align 4
  %60 = load i64, i64* @MAX_CMD_DESCRIPTORS, align 8
  %61 = call i64 @netxen_validate_ringparam(i32 %58, i32 %59, i64 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %64 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %43
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %70 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %76 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %92

80:                                               ; preds = %73, %67, %43
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %83 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %86 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %89 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %91 = call i32 @netxen_nic_reset_context(%struct.netxen_adapter* %90)
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %80, %79, %30, %22
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.netxen_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @NX_IS_REVISION_P2(i32) #1

declare dso_local i64 @netxen_validate_ringparam(i32, i32, i64, i8*) #1

declare dso_local i32 @netxen_nic_reset_context(%struct.netxen_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
