; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_smc_netdev_set_ecmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_smc_netdev_set_ecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i64, i64, i64 }

@SPEED_10 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@PORT_TP = common dso_local global i64 0, align 8
@PORT_AUI = common dso_local global i64 0, align 8
@XCVR_INTERNAL = common dso_local global i64 0, align 8
@TCR = common dso_local global i64 0, align 8
@TCR_FDUPLX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @smc_netdev_set_ecmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_netdev_set_ecmd(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SPEED_10, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %98

19:                                               ; preds = %2
  %20 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DUPLEX_HALF, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DUPLEX_FULL, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %98

34:                                               ; preds = %25, %19
  %35 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PORT_TP, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PORT_AUI, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %98

49:                                               ; preds = %40, %34
  %50 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @XCVR_INTERNAL, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %98

58:                                               ; preds = %49
  %59 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PORT_AUI, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = call i32 @smc_set_xcvr(%struct.net_device* %65, i32 1)
  br label %70

67:                                               ; preds = %58
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = call i32 @smc_set_xcvr(%struct.net_device* %68, i32 0)
  br label %70

70:                                               ; preds = %67, %64
  %71 = call i32 @SMC_SELECT_BANK(i32 0)
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = load i64, i64* @TCR, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @inw(i64 %75)
  store i32 %76, i32* %6, align 4
  %77 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DUPLEX_FULL, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %70
  %83 = load i32, i32* @TCR_FDUPLX, align 4
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  br label %91

86:                                               ; preds = %70
  %87 = load i32, i32* @TCR_FDUPLX, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %86, %82
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* @TCR, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @outw(i32 %92, i64 %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %91, %55, %46, %31, %16
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @smc_set_xcvr(%struct.net_device*, i32) #1

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
