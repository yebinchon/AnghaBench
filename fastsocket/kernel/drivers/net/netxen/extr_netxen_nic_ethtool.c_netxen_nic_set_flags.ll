; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ethtool.c_netxen_nic_set_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ethtool.c_netxen_nic_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netxen_adapter = type { i32, i32 }

@ETH_FLAG_LRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NX_FW_CAPABILITY_HW_LRO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"rx csum is off, cannot toggle LRO\0A\00", align 1
@NETIF_F_LRO = common dso_local global i32 0, align 4
@NETXEN_NIC_LRO_ENABLED = common dso_local global i32 0, align 4
@NETXEN_NIC_LRO_DISABLED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @netxen_nic_set_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_nic_set_flags(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netxen_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.netxen_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.netxen_adapter* %9, %struct.netxen_adapter** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i32 @ethtool_op_get_flags(%struct.net_device* %10)
  %12 = load i32, i32* @ETH_FLAG_LRO, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ETH_FLAG_LRO, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %14, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %101

23:                                               ; preds = %2
  %24 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NX_FW_CAPABILITY_HW_LRO, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %101

33:                                               ; preds = %23
  %34 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %35 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = call i32 @netdev_info(%struct.net_device* %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %101

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @ETH_FLAG_LRO, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @NETIF_F_LRO, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = icmp eq i32 %50, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %101

62:                                               ; preds = %43
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @ETH_FLAG_LRO, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32, i32* @NETXEN_NIC_LRO_ENABLED, align 4
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* @NETIF_F_LRO, align 4
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %82

74:                                               ; preds = %62
  %75 = load i32, i32* @NETXEN_NIC_LRO_DISABLED, align 4
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* @NETIF_F_LRO, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.net_device*, %struct.net_device** %4, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %74, %67
  %83 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @netxen_config_hw_lro(%struct.netxen_adapter* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %101

90:                                               ; preds = %82
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %95 = call i64 @netxen_send_lro_cleanup(%struct.netxen_adapter* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %101

100:                                              ; preds = %93, %90
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %97, %87, %61, %38, %30, %20
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.netxen_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_op_get_flags(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i64 @netxen_config_hw_lro(%struct.netxen_adapter*, i32) #1

declare dso_local i64 @netxen_send_lro_cleanup(%struct.netxen_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
