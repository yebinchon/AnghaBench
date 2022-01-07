; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_get_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_get_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32 }
%struct.igb_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @igb_get_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_get_module_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.igb_adapter*, align 8
  %9 = alloca %struct.e1000_hw*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.igb_adapter* %16, %struct.igb_adapter** %8, align 8
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %18 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %17, i32 0, i32 0
  store %struct.e1000_hw* %18, %struct.e1000_hw** %9, align 8
  %19 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %19, i64* %10, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %21 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %103

27:                                               ; preds = %3
  %28 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %29 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 1
  store i32 %31, i32* %12, align 4
  %32 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %33 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %36 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = sub nsw i32 %38, 1
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sub nsw i32 %41, %42
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32* @kmalloc(i32 %47, i32 %48)
  store i32* %49, i32** %11, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %27
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %103

55:                                               ; preds = %27
  store i32 0, i32* %14, align 4
  br label %56

56:                                               ; preds = %85, %55
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 %58, %59
  %61 = add nsw i32 %60, 1
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %56
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i64 @igb_read_phy_reg_i2c(%struct.e1000_hw* %64, i32 %67, i32* %71)
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @E1000_SUCCESS, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %63
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %103

79:                                               ; preds = %63
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = call i32 @be16_to_cpus(i32* %83)
  br label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %56

88:                                               ; preds = %56
  %89 = load i32*, i32** %7, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %92 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %90, i64 %95
  %97 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %98 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @memcpy(i32* %89, i32* %96, i32 %99)
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @kfree(i32* %101)
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %88, %76, %52, %24
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @igb_read_phy_reg_i2c(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @be16_to_cpus(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
