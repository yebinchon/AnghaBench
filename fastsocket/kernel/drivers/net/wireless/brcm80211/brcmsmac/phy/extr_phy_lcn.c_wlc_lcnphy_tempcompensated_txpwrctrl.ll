; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tempcompensated_txpwrctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tempcompensated_txpwrctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i32, i32, i32, i32, i32, i32, i64 }

@FIXED_TXPWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_phy*)* @wlc_lcnphy_tempcompensated_txpwrctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_lcnphy_tempcompensated_txpwrctrl(%struct.brcms_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %16 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %17, align 8
  store %struct.brcms_phy_lcnphy* %18, %struct.brcms_phy_lcnphy** %14, align 8
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %20 = call i64 @wlc_lcnphy_tssi_based_pwr_ctrl_enabled(%struct.brcms_phy* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %14, align 8
  %24 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %2, align 4
  br label %146

26:                                               ; preds = %1
  %27 = load i32, i32* @FIXED_TXPWR, align 4
  store i32 %27, i32* %4, align 4
  %28 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %14, align 8
  %29 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %146

34:                                               ; preds = %26
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %36 = call i64 @wlc_lcnphy_tempsense(%struct.brcms_phy* %35, i32 0)
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %13, align 8
  %38 = call i32 @LCNPHY_TEMPSENSE(i64 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %40 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %14, align 8
  %45 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %49 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  br label %54

53:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %43
  %55 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %14, align 8
  %56 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @LCNPHY_TEMPSENSE(i64 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  store i32 1, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %64, %54
  %68 = load i32, i32* %11, align 4
  %69 = mul nsw i32 %68, 192
  %70 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %14, align 8
  %71 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %72, 10
  %74 = call i64 @wlc_lcnphy_qdiv_roundup(i32 %69, i32 %73, i32 0)
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %78, %67
  %82 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %14, align 8
  %83 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %88 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @LCNREV_IS(i32 %90, i32 0)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %86, %81
  %95 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %14, align 8
  %96 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %97, 31
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %14, align 8
  %101 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 64
  store i32 %103, i32* %8, align 4
  br label %108

104:                                              ; preds = %94
  %105 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %14, align 8
  %106 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %104, %99
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %110 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @LCNREV_IS(i32 %112, i32 1)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  store i32 4, i32* %8, align 4
  br label %116

116:                                              ; preds = %115, %108
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %119, %120
  %122 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %14, align 8
  %123 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %121, %124
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %7, align 4
  %129 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %130 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @LCNREV_IS(i32 %132, i32 1)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %116
  store i32 127, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %116
  %137 = load i32, i32* %7, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %7, align 4
  %141 = icmp sgt i32 %140, 126
  br i1 %141, label %142, label %144

142:                                              ; preds = %139, %136
  %143 = load i32, i32* %4, align 4
  store i32 %143, i32* %2, align 4
  br label %146

144:                                              ; preds = %139
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %144, %142, %32, %22
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i64 @wlc_lcnphy_tssi_based_pwr_ctrl_enabled(%struct.brcms_phy*) #1

declare dso_local i64 @wlc_lcnphy_tempsense(%struct.brcms_phy*, i32) #1

declare dso_local i32 @LCNPHY_TEMPSENSE(i64) #1

declare dso_local i64 @wlc_lcnphy_qdiv_roundup(i32, i32, i32) #1

declare dso_local i64 @LCNREV_IS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
