; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_id_led_init_pchlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_id_led_init_pchlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_mac_info }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_mac_info = type { i32, i32, i32 }

@E1000_LEDCTL_MODE_LINK_UP = common dso_local global i32 0, align 4
@E1000_PHY_LED0_IVRT = common dso_local global i32 0, align 4
@LEDCTL = common dso_local global i32 0, align 4
@E1000_LEDCTL_LED0_MODE_MASK = common dso_local global i32 0, align 4
@E1000_PHY_LED0_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_id_led_init_pchlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_id_led_init_pchlan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  store %struct.e1000_mac_info* %13, %struct.e1000_mac_info** %4, align 8
  %14 = load i32, i32* @E1000_LEDCTL_MODE_LINK_UP, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @E1000_LEDCTL_MODE_LINK_UP, align 4
  %16 = load i32, i32* @E1000_PHY_LED0_IVRT, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64 (%struct.e1000_hw.0*, i32*)*, i64 (%struct.e1000_hw.0*, i32*)** %21, align 8
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = bitcast %struct.e1000_hw* %23 to %struct.e1000_hw.0*
  %25 = call i64 %22(%struct.e1000_hw.0* %24, i32* %8)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i64, i64* %5, align 8
  store i64 %29, i64* %2, align 8
  br label %131

30:                                               ; preds = %1
  %31 = load i32, i32* @LEDCTL, align 4
  %32 = call i32 @er32(i32 %31)
  %33 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %34 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %36 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %39 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %41 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %44 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %127, %30
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %130

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = shl i32 %50, 2
  %52 = ashr i32 %49, %51
  %53 = load i32, i32* @E1000_LEDCTL_LED0_MODE_MASK, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 %55, 5
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  switch i32 %57, label %90 [
    i32 130, label %58
    i32 128, label %58
    i32 129, label %58
    i32 133, label %74
    i32 131, label %74
    i32 132, label %74
  ]

58:                                               ; preds = %48, %48, %48
  %59 = load i32, i32* @E1000_PHY_LED0_MASK, align 4
  %60 = load i32, i32* %11, align 4
  %61 = shl i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %64 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %11, align 4
  %69 = shl i32 %67, %68
  %70 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %71 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %91

74:                                               ; preds = %48, %48, %48
  %75 = load i32, i32* @E1000_PHY_LED0_MASK, align 4
  %76 = load i32, i32* %11, align 4
  %77 = shl i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %80 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %11, align 4
  %85 = shl i32 %83, %84
  %86 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %87 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %91

90:                                               ; preds = %48
  br label %91

91:                                               ; preds = %90, %74, %58
  %92 = load i32, i32* %10, align 4
  switch i32 %92, label %125 [
    i32 134, label %93
    i32 128, label %93
    i32 131, label %93
    i32 135, label %109
    i32 129, label %109
    i32 132, label %109
  ]

93:                                               ; preds = %91, %91, %91
  %94 = load i32, i32* @E1000_PHY_LED0_MASK, align 4
  %95 = load i32, i32* %11, align 4
  %96 = shl i32 %94, %95
  %97 = xor i32 %96, -1
  %98 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %99 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %11, align 4
  %104 = shl i32 %102, %103
  %105 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %106 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %126

109:                                              ; preds = %91, %91, %91
  %110 = load i32, i32* @E1000_PHY_LED0_MASK, align 4
  %111 = load i32, i32* %11, align 4
  %112 = shl i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %115 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %11, align 4
  %120 = shl i32 %118, %119
  %121 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %122 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %126

125:                                              ; preds = %91
  br label %126

126:                                              ; preds = %125, %109, %93
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %45

130:                                              ; preds = %45
  store i64 0, i64* %2, align 8
  br label %131

131:                                              ; preds = %130, %28
  %132 = load i64, i64* %2, align 8
  ret i64 %132
}

declare dso_local i32 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
