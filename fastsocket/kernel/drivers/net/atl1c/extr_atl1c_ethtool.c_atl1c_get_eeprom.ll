; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_ethtool.c_atl1c_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_ethtool.c_atl1c_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.atl1c_adapter = type { %struct.TYPE_2__*, %struct.atl1c_hw }
%struct.TYPE_2__ = type { i32, i32 }
%struct.atl1c_hw = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @atl1c_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.atl1c_adapter*, align 8
  %9 = alloca %struct.atl1c_hw*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.atl1c_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.atl1c_adapter* %16, %struct.atl1c_adapter** %8, align 8
  %17 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %8, align 8
  %18 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %17, i32 0, i32 1
  store %struct.atl1c_hw* %18, %struct.atl1c_hw** %9, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %20 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %118

26:                                               ; preds = %3
  %27 = load %struct.atl1c_hw*, %struct.atl1c_hw** %9, align 8
  %28 = call i32 @atl1c_check_eeprom_exist(%struct.atl1c_hw* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %118

33:                                               ; preds = %26
  %34 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %8, align 8
  %35 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %8, align 8
  %40 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 16
  %45 = or i32 %38, %44
  %46 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %47 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %49 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 2
  store i32 %51, i32* %11, align 4
  %52 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %53 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %56 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %54, %57
  %59 = sub nsw i32 %58, 1
  %60 = ashr i32 %59, 2
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 %61, %62
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = mul i64 4, %65
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i32* @kmalloc(i32 %67, i32 %68)
  store i32* %69, i32** %10, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %33
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %118

75:                                               ; preds = %33
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %99, %75
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %102

81:                                               ; preds = %77
  %82 = load %struct.atl1c_hw*, %struct.atl1c_hw** %9, align 8
  %83 = load i32, i32* %14, align 4
  %84 = mul nsw i32 %83, 4
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  %91 = call i32 @atl1c_read_eeprom(%struct.atl1c_hw* %82, i32 %84, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %81
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @kfree(i32* %94)
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %118

98:                                               ; preds = %81
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %77

102:                                              ; preds = %77
  %103 = load i32*, i32** %7, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %106 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 3
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %104, i64 %109
  %111 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %112 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @memcpy(i32* %103, i32* %110, i32 %113)
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @kfree(i32* %115)
  %117 = load i32, i32* %13, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %102, %93, %72, %30, %23
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.atl1c_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @atl1c_check_eeprom_exist(%struct.atl1c_hw*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @atl1c_read_eeprom(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
