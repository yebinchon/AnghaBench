; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.e1000_adapter = type { %struct.TYPE_3__*, %struct.e1000_hw }
%struct.TYPE_3__ = type { i32, i32 }
%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@e1000_nvm_eeprom_spi = common dso_local global i64 0, align 8
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
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 1
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
  br label %157

26:                                               ; preds = %3
  %27 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %28 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %33 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 16
  %38 = or i32 %31, %37
  %39 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %40 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %42 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 1
  store i32 %44, i32* %11, align 4
  %45 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %46 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %49 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = sub nsw i32 %51, 1
  %53 = ashr i32 %52, 1
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = sub nsw i32 %54, %55
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = mul i64 4, %58
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32* @kmalloc(i32 %60, i32 %61)
  store i32* %62, i32** %10, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %26
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %157

68:                                               ; preds = %26
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %70 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @e1000_nvm_eeprom_spi, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %11, align 4
  %80 = sub nsw i32 %78, %79
  %81 = add nsw i32 %80, 1
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @e1000_read_nvm(%struct.e1000_hw* %76, i32 %77, i32 %81, i32* %82)
  store i32 %83, i32* %13, align 4
  br label %110

84:                                               ; preds = %68
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %106, %84
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %87, %88
  %90 = add nsw i32 %89, 1
  %91 = icmp slt i32 %86, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %85
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = call i32 @e1000_read_nvm(%struct.e1000_hw* %93, i32 %96, i32 1, i32* %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  br label %109

105:                                              ; preds = %92
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %85

109:                                              ; preds = %104, %85
  br label %110

110:                                              ; preds = %109, %75
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %11, align 4
  %117 = sub nsw i32 %115, %116
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = mul i64 4, %119
  %121 = trunc i64 %120 to i32
  %122 = call i32 @memset(i32* %114, i32 255, i32 %121)
  br label %141

123:                                              ; preds = %110
  store i32 0, i32* %14, align 4
  br label %124

124:                                              ; preds = %137, %123
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %11, align 4
  %128 = sub nsw i32 %126, %127
  %129 = add nsw i32 %128, 1
  %130 = icmp slt i32 %125, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %124
  %132 = load i32*, i32** %10, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = call i32 @le16_to_cpus(i32* %135)
  br label %137

137:                                              ; preds = %131
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %14, align 4
  br label %124

140:                                              ; preds = %124
  br label %141

141:                                              ; preds = %140, %113
  %142 = load i32*, i32** %7, align 8
  %143 = load i32*, i32** %10, align 8
  %144 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %145 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %143, i64 %148
  %150 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %151 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @memcpy(i32* %142, i32* %149, i32 %152)
  %154 = load i32*, i32** %10, align 8
  %155 = call i32 @kfree(i32* %154)
  %156 = load i32, i32* %13, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %141, %65, %23
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @e1000_read_nvm(%struct.e1000_hw*, i32, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @le16_to_cpus(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
