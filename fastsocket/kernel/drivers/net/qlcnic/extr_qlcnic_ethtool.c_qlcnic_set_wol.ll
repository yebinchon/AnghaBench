; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.qlcnic_adapter = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QLCNIC_WOL_CONFIG_NV = common dso_local global i32 0, align 4
@QLCNIC_WOL_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @qlcnic_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.qlcnic_adapter* %9, %struct.qlcnic_adapter** %6, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %11 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %77

16:                                               ; preds = %2
  %17 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @WAKE_MAGIC, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %77

27:                                               ; preds = %16
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %29 = load i32, i32* @QLCNIC_WOL_CONFIG_NV, align 4
  %30 = call i32 @QLCRD32(%struct.qlcnic_adapter* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %33 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %31, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %27
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %77

41:                                               ; preds = %27
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %43 = load i32, i32* @QLCNIC_WOL_CONFIG, align 4
  %44 = call i32 @QLCRD32(%struct.qlcnic_adapter* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @WAKE_MAGIC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %41
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %53 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  %56 = shl i64 1, %55
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = or i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %7, align 4
  br label %72

61:                                               ; preds = %41
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %63 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = zext i32 %64 to i64
  %66 = shl i64 1, %65
  %67 = xor i64 %66, -1
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = and i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %61, %51
  %73 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %74 = load i32, i32* @QLCNIC_WOL_CONFIG, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @QLCWR32(%struct.qlcnic_adapter* %73, i32 %74, i32 %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %38, %24, %13
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @QLCWR32(%struct.qlcnic_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
