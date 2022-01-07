; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_set_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.ethtool_wolinfo = type { i32 }
%struct.port_info = type { i32, i32 }

@WOL_SUPPORTED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@BCAST_CRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.port_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.port_info* @netdev_priv(%struct.net_device* %8)
  store %struct.port_info* %9, %struct.port_info** %7, align 8
  %10 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @WOL_SUPPORTED, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %77

20:                                               ; preds = %2
  %21 = load %struct.port_info*, %struct.port_info** %7, align 8
  %22 = getelementptr inbounds %struct.port_info, %struct.port_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.port_info*, %struct.port_info** %7, align 8
  %25 = getelementptr inbounds %struct.port_info, %struct.port_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WAKE_MAGIC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  br label %38

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i32* [ %36, %33 ], [ null, %37 ]
  %40 = call i32 @t4_wol_magic_enable(i32 %23, i32 %26, i32* %39)
  %41 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @WAKE_BCAST, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %38
  %48 = load %struct.port_info*, %struct.port_info** %7, align 8
  %49 = getelementptr inbounds %struct.port_info, %struct.port_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.port_info*, %struct.port_info** %7, align 8
  %52 = getelementptr inbounds %struct.port_info, %struct.port_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @t4_wol_pat_enable(i32 %50, i32 %53, i32 254, i64 -1, i64 -1, i32 0, i32 0)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %47
  %58 = load %struct.port_info*, %struct.port_info** %7, align 8
  %59 = getelementptr inbounds %struct.port_info, %struct.port_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.port_info*, %struct.port_info** %7, align 8
  %62 = getelementptr inbounds %struct.port_info, %struct.port_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @BCAST_CRC, align 4
  %65 = call i32 @t4_wol_pat_enable(i32 %60, i32 %63, i32 1, i64 -7, i64 -1, i32 %64, i32 1)
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %57, %47
  br label %75

67:                                               ; preds = %38
  %68 = load %struct.port_info*, %struct.port_info** %7, align 8
  %69 = getelementptr inbounds %struct.port_info, %struct.port_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.port_info*, %struct.port_info** %7, align 8
  %72 = getelementptr inbounds %struct.port_info, %struct.port_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @t4_wol_pat_enable(i32 %70, i32 %73, i32 0, i64 0, i64 0, i32 0, i32 0)
  br label %75

75:                                               ; preds = %67, %66
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %17
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @t4_wol_magic_enable(i32, i32, i32*) #1

declare dso_local i32 @t4_wol_pat_enable(i32, i32, i32, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
