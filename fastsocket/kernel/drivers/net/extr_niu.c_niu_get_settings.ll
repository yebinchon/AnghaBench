; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.niu = type { i32, i32, %struct.niu_link_config }
%struct.niu_link_config = type { i32, i32, i32, i32, i32 }

@NIU_FLAGS_FIBER = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@NIU_FLAGS_XCVR_SERDES = common dso_local global i32 0, align 4
@XCVR_EXTERNAL = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @niu_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.niu*, align 8
  %6 = alloca %struct.niu_link_config*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.niu* @netdev_priv(%struct.net_device* %7)
  store %struct.niu* %8, %struct.niu** %5, align 8
  %9 = load %struct.niu*, %struct.niu** %5, align 8
  %10 = getelementptr inbounds %struct.niu, %struct.niu* %9, i32 0, i32 2
  store %struct.niu_link_config* %10, %struct.niu_link_config** %6, align 8
  %11 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %12 = call i32 @memset(%struct.ethtool_cmd* %11, i32 0, i32 32)
  %13 = load %struct.niu*, %struct.niu** %5, align 8
  %14 = getelementptr inbounds %struct.niu, %struct.niu* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  %18 = load %struct.niu_link_config*, %struct.niu_link_config** %6, align 8
  %19 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load %struct.niu_link_config*, %struct.niu_link_config** %6, align 8
  %24 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.niu_link_config*, %struct.niu_link_config** %6, align 8
  %29 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.niu_link_config*, %struct.niu_link_config** %6, align 8
  %34 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.niu_link_config*, %struct.niu_link_config** %6, align 8
  %39 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %42 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.niu*, %struct.niu** %5, align 8
  %44 = getelementptr inbounds %struct.niu, %struct.niu* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NIU_FLAGS_FIBER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %2
  %50 = load i32, i32* @PORT_FIBRE, align 4
  br label %53

51:                                               ; preds = %2
  %52 = load i32, i32* @PORT_TP, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %56 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.niu*, %struct.niu** %5, align 8
  %58 = getelementptr inbounds %struct.niu, %struct.niu* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NIU_FLAGS_XCVR_SERDES, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* @XCVR_EXTERNAL, align 4
  br label %67

65:                                               ; preds = %53
  %66 = load i32, i32* @XCVR_INTERNAL, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %70 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  ret i32 0
}

declare dso_local %struct.niu* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.ethtool_cmd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
