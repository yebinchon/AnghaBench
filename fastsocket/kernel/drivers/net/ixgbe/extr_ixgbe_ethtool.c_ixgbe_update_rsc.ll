; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_update_rsc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_update_rsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32 }

@IXGBE_FLAG2_RSC_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_MIN_RSC_ITR = common dso_local global i32 0, align 4
@IXGBE_FLAG2_RSC_ENABLED = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"rx-usecs set too low, disabling RSC\0A\00", align 1
@NETIF_F_LRO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"rx-usecs set to %d, re-enabling RSC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, %struct.ethtool_coalesce*)* @ixgbe_update_rsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_update_rsc(%struct.ixgbe_adapter* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 1
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IXGBE_FLAG2_RSC_CAPABLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

17:                                               ; preds = %2
  %18 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %46

22:                                               ; preds = %17
  %23 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IXGBE_MIN_RSC_ITR, align 4
  %27 = ashr i32 %26, 2
  %28 = icmp sle i32 %25, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %22
  %30 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IXGBE_FLAG2_RSC_ENABLED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load i32, i32* @probe, align 4
  %38 = call i32 (i32, i8*, ...) @e_info(i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @IXGBE_FLAG2_RSC_ENABLED, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  store i32 1, i32* %3, align 4
  br label %73

45:                                               ; preds = %29
  br label %72

46:                                               ; preds = %22, %17
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NETIF_F_LRO, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %46
  %54 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %55 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @IXGBE_FLAG2_RSC_ENABLED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @probe, align 4
  %62 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %63 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @e_info(i32 %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @IXGBE_FLAG2_RSC_ENABLED, align 4
  %67 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %68 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  store i32 1, i32* %3, align 4
  br label %73

71:                                               ; preds = %53, %46
  br label %72

72:                                               ; preds = %71, %45
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %60, %36, %16
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @e_info(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
