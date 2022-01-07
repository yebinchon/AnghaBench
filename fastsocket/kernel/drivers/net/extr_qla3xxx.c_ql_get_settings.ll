; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i8*, i32, i32, i8*, i32 }
%struct.ql3_adapter = type { i32, i32 }

@XCVR_INTERNAL = common dso_local global i32 0, align 4
@QL_LINK_OPTICAL = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @ql_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.ql3_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ql3_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.ql3_adapter* %7, %struct.ql3_adapter** %5, align 8
  %8 = load i32, i32* @XCVR_INTERNAL, align 4
  %9 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 8
  %11 = load %struct.ql3_adapter*, %struct.ql3_adapter** %5, align 8
  %12 = call i8* @ql_supported_modes(%struct.ql3_adapter* %11)
  %13 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %13, i32 0, i32 6
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* @QL_LINK_OPTICAL, align 4
  %16 = load %struct.ql3_adapter*, %struct.ql3_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %16, i32 0, i32 1
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @PORT_FIBRE, align 4
  %22 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  br label %33

24:                                               ; preds = %2
  %25 = load i32, i32* @PORT_TP, align 4
  %26 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ql3_adapter*, %struct.ql3_adapter** %5, align 8
  %29 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %24, %20
  %34 = load %struct.ql3_adapter*, %struct.ql3_adapter** %5, align 8
  %35 = call i8* @ql_supported_modes(%struct.ql3_adapter* %34)
  %36 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ql3_adapter*, %struct.ql3_adapter** %5, align 8
  %39 = call i32 @ql_get_auto_cfg_status(%struct.ql3_adapter* %38)
  %40 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ql3_adapter*, %struct.ql3_adapter** %5, align 8
  %43 = call i32 @ql_get_speed(%struct.ql3_adapter* %42)
  %44 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %45 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ql3_adapter*, %struct.ql3_adapter** %5, align 8
  %47 = call i32 @ql_get_full_dup(%struct.ql3_adapter* %46)
  %48 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  ret i32 0
}

declare dso_local %struct.ql3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @ql_supported_modes(%struct.ql3_adapter*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ql_get_auto_cfg_status(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_get_speed(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_get_full_dup(%struct.ql3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
