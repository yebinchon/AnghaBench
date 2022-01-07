; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32 }
%struct.ixgbe_adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_ERR_PHY_ADDR_INVALID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@__IXGBE_IN_SFP_INIT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079_LEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @ixgbe_get_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_module_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ixgbe_adapter*, align 8
  %9 = alloca %struct.ixgbe_hw*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.ixgbe_adapter* %15, %struct.ixgbe_adapter** %8, align 8
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 1
  store %struct.ixgbe_hw* %17, %struct.ixgbe_hw** %9, align 8
  %18 = load i64, i64* @IXGBE_ERR_PHY_ADDR_INVALID, align 8
  store i64 %18, i64* %10, align 8
  store i32 255, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %20 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %90

26:                                               ; preds = %3
  %27 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %28 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %85, %26
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %33 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %88

36:                                               ; preds = %30
  %37 = load i32, i32* @__IXGBE_IN_SFP_INIT, align 4
  %38 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %39 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %38, i32 0, i32 0
  %40 = call i64 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %90

45:                                               ; preds = %36
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @ETH_MODULE_SFF_8079_LEN, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %51 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %53, align 8
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %56 = bitcast %struct.ixgbe_hw* %55 to %struct.ixgbe_hw.0*
  %57 = load i32, i32* %12, align 4
  %58 = call i64 %54(%struct.ixgbe_hw.0* %56, i32 %57, i32* %11)
  store i64 %58, i64* %10, align 8
  br label %69

59:                                               ; preds = %45
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %61 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64 (%struct.ixgbe_hw.1*, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32*)** %63, align 8
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %66 = bitcast %struct.ixgbe_hw* %65 to %struct.ixgbe_hw.1*
  %67 = load i32, i32* %12, align 4
  %68 = call i64 %64(%struct.ixgbe_hw.1* %66, i32 %67, i32* %11)
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %59, %49
  %70 = load i64, i64* %10, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %80 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %77, i64 %83
  store i32 %76, i32* %84, align 4
  br label %85

85:                                               ; preds = %75
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %30

88:                                               ; preds = %30
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %42, %23
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
