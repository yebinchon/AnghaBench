; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ethtool.c_netxen_nic_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ethtool.c_netxen_nic_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.net_device*)*, i32 (%struct.net_device*)* }
%struct.ethtool_cmd = type { i32, i32 }
%struct.netxen_adapter = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@NETXEN_NIC_GBE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NX_FW_CAPABILITY_GBE_LINK_CFG = common dso_local global i32 0, align 4
@NX_RCODE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @netxen_nic_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_nic_set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.netxen_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.netxen_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.netxen_adapter* %10, %struct.netxen_adapter** %6, align 8
  %11 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %12 = call i32 @ethtool_cmd_speed(%struct.ethtool_cmd* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %14 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NETXEN_NIC_GBE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %88

22:                                               ; preds = %2
  %23 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %24 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @NX_FW_CAPABILITY_GBE_LINK_CFG, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %88

32:                                               ; preds = %22
  %33 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nx_fw_cmd_set_gbe_port(%struct.netxen_adapter* %33, i32 %34, i32 %37, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @NX_RCODE_NOT_SUPPORTED, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %88

48:                                               ; preds = %32
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %88

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %58 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %63 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %68 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = call i32 @netif_running(%struct.net_device* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %88

73:                                               ; preds = %55
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %77, align 8
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = call i32 %78(%struct.net_device* %79)
  %81 = load %struct.net_device*, %struct.net_device** %4, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %84, align 8
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = call i32 %85(%struct.net_device* %86)
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %73, %72, %51, %45, %29, %19
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.netxen_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

declare dso_local i32 @nx_fw_cmd_set_gbe_port(%struct.netxen_adapter*, i32, i32, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
