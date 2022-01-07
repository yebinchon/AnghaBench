; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.igb_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*, i32, i32, i32*)* }
%struct.e1000_hw.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@e1000_nvm_eeprom_spi = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @igb_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.igb_adapter*, align 8
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
  %16 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.igb_adapter* %16, %struct.igb_adapter** %8, align 8
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %18 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %17, i32 0, i32 0
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
  br label %151

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
  br label %151

64:                                               ; preds = %26
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %66 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @e1000_nvm_eeprom_spi, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %64
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %73 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32 (%struct.e1000_hw.0*, i32, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32, i32*)** %75, align 8
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %78 = bitcast %struct.e1000_hw* %77 to %struct.e1000_hw.0*
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %80, %81
  %83 = add nsw i32 %82, 1
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 %76(%struct.e1000_hw.0* %78, i32 %79, i32 %83, i32* %84)
  store i32 %85, i32* %13, align 4
  br label %118

86:                                               ; preds = %64
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %114, %86
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 %89, %90
  %92 = add nsw i32 %91, 1
  %93 = icmp slt i32 %88, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %87
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %96 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32 (%struct.e1000_hw.0*, i32, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32, i32*)** %98, align 8
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %101 = bitcast %struct.e1000_hw* %100 to %struct.e1000_hw.0*
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = call i32 %99(%struct.e1000_hw.0* %101, i32 %104, i32 1, i32* %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %94
  br label %117

113:                                              ; preds = %94
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  br label %87

117:                                              ; preds = %112, %87
  br label %118

118:                                              ; preds = %117, %71
  store i32 0, i32* %14, align 4
  br label %119

119:                                              ; preds = %132, %118
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %11, align 4
  %123 = sub nsw i32 %121, %122
  %124 = add nsw i32 %123, 1
  %125 = icmp slt i32 %120, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %119
  %127 = load i32*, i32** %10, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = call i32 @le16_to_cpus(i32* %130)
  br label %132

132:                                              ; preds = %126
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %14, align 4
  br label %119

135:                                              ; preds = %119
  %136 = load i32*, i32** %7, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %139 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %137, i64 %142
  %144 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %145 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @memcpy(i32* %136, i32* %143, i32 %146)
  %148 = load i32*, i32** %10, align 8
  %149 = call i32 @kfree(i32* %148)
  %150 = load i32, i32* %13, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %135, %61, %23
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

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
