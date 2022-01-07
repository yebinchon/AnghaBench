; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_ethtool.c_atl1e_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_ethtool.c_atl1e_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.atl1e_adapter = type { %struct.atl1e_hw }
%struct.atl1e_hw = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AT_EEPROM_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @atl1e_set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1e_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.atl1e_adapter*, align 8
  %9 = alloca %struct.atl1e_hw*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.atl1e_adapter* @netdev_priv(%struct.net_device* %16)
  store %struct.atl1e_adapter* %17, %struct.atl1e_adapter** %8, align 8
  %18 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %8, align 8
  %19 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %18, i32 0, i32 0
  store %struct.atl1e_hw* %19, %struct.atl1e_hw** %9, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %21 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %151

27:                                               ; preds = %3
  %28 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %29 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.atl1e_hw*, %struct.atl1e_hw** %9, align 8
  %32 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.atl1e_hw*, %struct.atl1e_hw** %9, align 8
  %35 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 16
  %38 = or i32 %33, %37
  %39 = icmp ne i32 %30, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %151

43:                                               ; preds = %27
  %44 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %45 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 2
  store i32 %47, i32* %12, align 4
  %48 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %49 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %52 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = sub nsw i32 %54, 1
  %56 = ashr i32 %55, 2
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* @AT_EEPROM_LEN, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i32* @kmalloc(i32 %57, i32 %58)
  store i32* %59, i32** %10, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %43
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %151

65:                                               ; preds = %43
  %66 = load i32*, i32** %10, align 8
  store i32* %66, i32** %11, align 8
  %67 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %68 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 3
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %65
  %73 = load %struct.atl1e_hw*, %struct.atl1e_hw** %9, align 8
  %74 = load i32, i32* %12, align 4
  %75 = mul nsw i32 %74, 4
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = call i32 @atl1e_read_eeprom(%struct.atl1e_hw* %73, i32 %75, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %14, align 4
  br label %147

83:                                               ; preds = %72
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %11, align 8
  br label %86

86:                                               ; preds = %83, %65
  %87 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %88 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %91 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %89, %92
  %94 = and i32 %93, 3
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %86
  %97 = load %struct.atl1e_hw*, %struct.atl1e_hw** %9, align 8
  %98 = load i32, i32* %13, align 4
  %99 = mul nsw i32 %98, 4
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %12, align 4
  %103 = sub nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  %106 = call i32 @atl1e_read_eeprom(%struct.atl1e_hw* %97, i32 %99, i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %96
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %14, align 4
  br label %147

111:                                              ; preds = %96
  br label %112

112:                                              ; preds = %111, %86
  %113 = load i32*, i32** %11, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %116 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @memcpy(i32* %113, i32* %114, i32 %117)
  store i32 0, i32* %15, align 4
  br label %119

119:                                              ; preds = %143, %112
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %12, align 4
  %123 = sub nsw i32 %121, %122
  %124 = add nsw i32 %123, 1
  %125 = icmp slt i32 %120, %124
  br i1 %125, label %126, label %146

126:                                              ; preds = %119
  %127 = load %struct.atl1e_hw*, %struct.atl1e_hw** %9, align 8
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %128, %129
  %131 = mul nsw i32 %130, 4
  %132 = load i32*, i32** %10, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @atl1e_write_eeprom(%struct.atl1e_hw* %127, i32 %131, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %126
  %140 = load i32, i32* @EIO, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %14, align 4
  br label %147

142:                                              ; preds = %126
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %15, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %15, align 4
  br label %119

146:                                              ; preds = %119
  br label %147

147:                                              ; preds = %146, %139, %108, %80
  %148 = load i32*, i32** %10, align 8
  %149 = call i32 @kfree(i32* %148)
  %150 = load i32, i32* %14, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %147, %62, %40, %24
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local %struct.atl1e_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @atl1e_read_eeprom(%struct.atl1e_hw*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @atl1e_write_eeprom(%struct.atl1e_hw*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
