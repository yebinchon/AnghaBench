; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @ixgbe_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ixgbe_adapter*, align 8
  %9 = alloca %struct.ixgbe_hw*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %16)
  store %struct.ixgbe_adapter* %17, %struct.ixgbe_adapter** %8, align 8
  %18 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %19 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %18, i32 0, i32 0
  store %struct.ixgbe_hw* %19, %struct.ixgbe_hw** %9, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %21 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %107

27:                                               ; preds = %3
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 16
  %35 = or i32 %30, %34
  %36 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %37 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %39 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 1
  store i32 %41, i32* %11, align 4
  %42 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %43 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %46 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %44, %47
  %49 = sub nsw i32 %48, 1
  %50 = ashr i32 %49, 1
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = sub nsw i32 %51, %52
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i32* @kmalloc(i32 %58, i32 %59)
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %27
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %107

66:                                               ; preds = %27
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %68 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %70, align 8
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %73 = bitcast %struct.ixgbe_hw* %72 to %struct.ixgbe_hw.0*
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 %71(%struct.ixgbe_hw.0* %73, i32 %74, i32 %75, i32* %76)
  store i32 %77, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %78

78:                                               ; preds = %88, %66
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i32 @le16_to_cpus(i32* %86)
  br label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  br label %78

91:                                               ; preds = %78
  %92 = load i32*, i32** %7, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %95 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %93, i64 %98
  %100 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %101 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @memcpy(i32* %92, i32* %99, i32 %102)
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @kfree(i32* %104)
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %91, %63, %24
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @le16_to_cpus(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
