; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_rx_signal_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_rx_signal_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i64 }

@lcnphy_gain_table = common dso_local global i64* null, align 8
@lcnphy_gain_index_offset_for_rssi = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wlc_lcnphy_rx_signal_power(%struct.brcms_phy* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %24 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %25, align 8
  store %struct.brcms_phy_lcnphy* %26, %struct.brcms_phy_lcnphy** %22, align 8
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %28 = call i64 @wlc_lcnphy_get_receive_power(%struct.brcms_phy* %27, i64* %4)
  store i64 %28, i64* %12, align 8
  %29 = load i64*, i64** @lcnphy_gain_table, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %5, align 8
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %34 = call i32 @read_phy_reg(%struct.brcms_phy* %33, i32 1061)
  %35 = ashr i32 %34, 8
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %12, align 8
  %38 = mul i64 %37, 16
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @ffs(i32 %40)
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %15, align 4
  %46 = shl i32 1, %45
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %16, align 4
  %48 = shl i32 1, %47
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %17, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* %14, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* %20, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %2
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %7, align 8
  br label %64

61:                                               ; preds = %2
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %7, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i64, i64* %7, align 8
  %66 = mul i64 %65, 3
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %6, align 8
  %68 = udiv i64 %67, 2
  %69 = load i64, i64* %7, align 8
  %70 = sub i64 %68, %69
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %71, %72
  store i64 %73, i64* %9, align 8
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %75 = call i32 @read_phy_reg(%struct.brcms_phy* %74, i32 1076)
  %76 = and i32 %75, 255
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %10, align 8
  %79 = icmp ugt i64 %78, 127
  br i1 %79, label %80, label %83

80:                                               ; preds = %64
  %81 = load i64, i64* %10, align 8
  %82 = sub i64 %81, 256
  store i64 %82, i64* %10, align 8
  br label %83

83:                                               ; preds = %80, %64
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %9, align 8
  %86 = sub i64 %84, %85
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i64*, i64** @lcnphy_gain_index_offset_for_rssi, align 8
  %89 = load i64, i64* %4, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %87, %91
  store i64 %92, i64* %11, align 8
  %93 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %94 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @CHSPEC_CHANNEL(i32 %95)
  %97 = call i32 @wlc_phy_channel2freq(i32 %96)
  store i32 %97, i32* %21, align 4
  %98 = load i32, i32* %21, align 4
  %99 = icmp sgt i32 %98, 2427
  br i1 %99, label %100, label %106

100:                                              ; preds = %83
  %101 = load i32, i32* %21, align 4
  %102 = icmp sle i32 %101, 2467
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i64, i64* %11, align 8
  %105 = sub i64 %104, 1
  store i64 %105, i64* %11, align 8
  br label %106

106:                                              ; preds = %103, %100, %83
  %107 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %22, align 8
  %108 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %13, align 8
  %110 = load i64, i64* %13, align 8
  %111 = sub i64 %110, 15
  %112 = icmp ult i64 %111, -30
  br i1 %112, label %113, label %122

113:                                              ; preds = %106
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* %13, align 8
  %116 = sub i64 %115, 10
  %117 = sub i64 %116, 25
  %118 = mul i64 %117, 286
  %119 = lshr i64 %118, 12
  %120 = add i64 %114, %119
  %121 = sub i64 %120, 7
  store i64 %121, i64* %11, align 8
  br label %144

122:                                              ; preds = %106
  %123 = load i64, i64* %13, align 8
  %124 = sub i64 %123, 15
  %125 = icmp ult i64 %124, 4
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %13, align 8
  %129 = sub i64 %128, 10
  %130 = sub i64 %129, 25
  %131 = mul i64 %130, 286
  %132 = lshr i64 %131, 12
  %133 = add i64 %127, %132
  %134 = sub i64 %133, 3
  store i64 %134, i64* %11, align 8
  br label %143

135:                                              ; preds = %122
  %136 = load i64, i64* %11, align 8
  %137 = load i64, i64* %13, align 8
  %138 = sub i64 %137, 10
  %139 = sub i64 %138, 25
  %140 = mul i64 %139, 286
  %141 = lshr i64 %140, 12
  %142 = add i64 %136, %141
  store i64 %142, i64* %11, align 8
  br label %143

143:                                              ; preds = %135, %126
  br label %144

144:                                              ; preds = %143, %113
  %145 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %146 = call i32 @wlc_lcnphy_rx_gain_override_enable(%struct.brcms_phy* %145, i32 0)
  %147 = load i64, i64* %11, align 8
  ret i64 %147
}

declare dso_local i64 @wlc_lcnphy_get_receive_power(%struct.brcms_phy*, i64*) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @wlc_phy_channel2freq(i32) #1

declare dso_local i32 @CHSPEC_CHANNEL(i32) #1

declare dso_local i32 @wlc_lcnphy_rx_gain_override_enable(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
