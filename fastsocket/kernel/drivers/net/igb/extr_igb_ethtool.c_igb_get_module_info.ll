; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_get_module_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_get_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_modinfo = type { i32, i32 }
%struct.igb_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@e1000_media_type_copper = common dso_local global i64 0, align 8
@e1000_media_type_unknown = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IGB_SFF_8472_COMP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IGB_SFF_8472_SWAP = common dso_local global i32 0, align 4
@IGB_SFF_ADDRESSING_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [122 x i8] c"Address change required to access page 0xA2, but not supported. Please report the module type to the driver maintainers.\0A\00", align 1
@IGB_SFF_8472_UNSUP = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079_LEN = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_modinfo*)* @igb_get_module_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_get_module_info(%struct.net_device* %0, %struct.ethtool_modinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_modinfo*, align 8
  %6 = alloca %struct.igb_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_modinfo* %1, %struct.ethtool_modinfo** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.igb_adapter* %13, %struct.igb_adapter** %6, align 8
  %14 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %14, i32 0, i32 0
  store %struct.e1000_hw* %15, %struct.e1000_hw** %7, align 8
  %16 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %16, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @e1000_media_type_copper, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %2
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @e1000_media_type_unknown, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23, %2
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %84

33:                                               ; preds = %23
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %35 = load i32, i32* @IGB_SFF_8472_COMP, align 4
  %36 = call i64 @igb_read_phy_reg_i2c(%struct.e1000_hw* %34, i32 %35, i32* %9)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @E1000_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %84

43:                                               ; preds = %33
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %45 = load i32, i32* @IGB_SFF_8472_SWAP, align 4
  %46 = call i64 @igb_read_phy_reg_i2c(%struct.e1000_hw* %44, i32 %45, i32* %10)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @E1000_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %84

53:                                               ; preds = %43
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, 255
  %56 = load i32, i32* @IGB_SFF_ADDRESSING_MODE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 @hw_dbg(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %61

61:                                               ; preds = %59, %53
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, 255
  %64 = load i32, i32* @IGB_SFF_8472_UNSUP, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66, %61
  %70 = load i32, i32* @ETH_MODULE_SFF_8079, align 4
  %71 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @ETH_MODULE_SFF_8079_LEN, align 4
  %74 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %83

76:                                               ; preds = %66
  %77 = load i32, i32* @ETH_MODULE_SFF_8472, align 4
  %78 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @ETH_MODULE_SFF_8472_LEN, align 4
  %81 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %82 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %76, %69
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %50, %40, %30
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @igb_read_phy_reg_i2c(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @hw_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
