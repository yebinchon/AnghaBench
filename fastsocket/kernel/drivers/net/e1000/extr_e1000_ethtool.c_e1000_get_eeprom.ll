; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@e1000_eeprom_spi = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @e1000_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.e1000_adapter*, align 8
  %9 = alloca %struct.e1000_hw*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.e1000_adapter* %16, %struct.e1000_adapter** %8, align 8
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 0
  store %struct.e1000_hw* %18, %struct.e1000_hw** %9, align 8
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
  br label %139

26:                                               ; preds = %3
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 16
  %34 = or i32 %29, %33
  %35 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %36 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %38 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %11, align 4
  %41 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %42 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %45 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = sub nsw i32 %47, 1
  %49 = ashr i32 %48, 1
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = sub nsw i32 %50, %51
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = mul i64 4, %54
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32* @kmalloc(i32 %56, i32 %57)
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %26
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %139

64:                                               ; preds = %26
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %66 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @e1000_eeprom_spi, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = sub nsw i32 %74, %75
  %77 = add nsw i32 %76, 1
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @e1000_read_eeprom(%struct.e1000_hw* %72, i32 %73, i32 %77, i32* %78)
  store i32 %79, i32* %13, align 4
  br label %106

80:                                               ; preds = %64
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %102, %80
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %83, %84
  %86 = add nsw i32 %85, 1
  %87 = icmp slt i32 %82, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %81
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = call i32 @e1000_read_eeprom(%struct.e1000_hw* %89, i32 %92, i32 1, i32* %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %88
  br label %105

101:                                              ; preds = %88
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %81

105:                                              ; preds = %100, %81
  br label %106

106:                                              ; preds = %105, %71
  store i32 0, i32* %14, align 4
  br label %107

107:                                              ; preds = %120, %106
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %11, align 4
  %111 = sub nsw i32 %109, %110
  %112 = add nsw i32 %111, 1
  %113 = icmp slt i32 %108, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %107
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = call i32 @le16_to_cpus(i32* %118)
  br label %120

120:                                              ; preds = %114
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %14, align 4
  br label %107

123:                                              ; preds = %107
  %124 = load i32*, i32** %7, align 8
  %125 = load i32*, i32** %10, align 8
  %126 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %127 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %125, i64 %130
  %132 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %133 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @memcpy(i32* %124, i32* %131, i32 %134)
  %136 = load i32*, i32** %10, align 8
  %137 = call i32 @kfree(i32* %136)
  %138 = load i32, i32* %13, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %123, %61, %23
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @e1000_read_eeprom(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @le16_to_cpus(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
