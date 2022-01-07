; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_adjust_lnagaintbl_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_adjust_lnagaintbl_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, i64, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@nphy_lnagain_est0 = common dso_local global i32* null, align 8
@nphy_lnagain_est1 = common dso_local global i32* null, align 8
@nphy_def_lnagains = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_adjust_lnagaintbl_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_adjust_lnagaintbl_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [4 x i32], align 16
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %10 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %15 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %14, i32 1)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %18 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %16
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %23 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @CHSPEC_IS2G(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 6, i32* %28, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 6, i32* %29, align 4
  br label %59

30:                                               ; preds = %21
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %32 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @CHSPEC_CHANNEL(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32*, i32** @nphy_lnagain_est0, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32*, i32** @nphy_lnagain_est0, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = call i64 @PHY_HW_ROUND(i32 %43, i32 13)
  %45 = trunc i64 %44 to i32
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** @nphy_lnagain_est1, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32*, i32** @nphy_lnagain_est1, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = call i64 @PHY_HW_ROUND(i32 %55, i32 13)
  %57 = trunc i64 %56 to i32
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %30, %27
  br label %63

60:                                               ; preds = %16
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %59
  store i64 0, i64* %3, align 8
  br label %64

64:                                               ; preds = %145, %63
  %65 = load i64, i64* %3, align 8
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %67 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %65, %69
  br i1 %70, label %71, label %148

71:                                               ; preds = %64
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %73 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %109

76:                                               ; preds = %71
  %77 = load i32*, i32** @nphy_def_lnagains, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %3, align 8
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %79, %82
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %83, i32* %84, align 16
  %85 = load i32*, i32** @nphy_def_lnagains, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %3, align 8
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %87, %90
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %91, i32* %92, align 4
  %93 = load i32*, i32** @nphy_def_lnagains, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* %3, align 8
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %95, %98
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %99, i32* %100, align 8
  %101 = load i32*, i32** @nphy_def_lnagains, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %3, align 8
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %103, %106
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %107, i32* %108, align 4
  br label %130

109:                                              ; preds = %71
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %126, %109
  %111 = load i32, i32* %4, align 4
  %112 = icmp slt i32 %111, 4
  br i1 %112, label %113, label %129

113:                                              ; preds = %110
  %114 = load i32*, i32** @nphy_def_lnagains, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* %3, align 8
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %118, %121
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %124
  store i32 %122, i32* %125, align 4
  br label %126

126:                                              ; preds = %113
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %4, align 4
  br label %110

129:                                              ; preds = %110
  br label %130

130:                                              ; preds = %129, %76
  %131 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %132 = load i64, i64* %3, align 8
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %134 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %131, i64 %132, i32 4, i32 8, i32 16, i32* %133)
  %135 = load i32*, i32** @nphy_def_lnagains, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = load i32, i32* %136, align 4
  %138 = load i64, i64* %3, align 8
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %137, %140
  %142 = add nsw i32 %141, 4
  %143 = load i64, i64* %3, align 8
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %143
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %130
  %146 = load i64, i64* %3, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %3, align 8
  br label %64

148:                                              ; preds = %64
  %149 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %151, 0
  %153 = call i32 @mod_phy_reg(%struct.brcms_phy* %149, i32 30, i32 255, i32 %152)
  %154 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = shl i32 %156, 0
  %158 = call i32 @mod_phy_reg(%struct.brcms_phy* %154, i32 52, i32 255, i32 %157)
  %159 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %160 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %148
  %164 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %165 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %164, i32 0)
  br label %166

166:                                              ; preds = %163, %148
  ret void
}

declare dso_local i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @CHSPEC_CHANNEL(i32) #1

declare dso_local i64 @PHY_HW_ROUND(i32, i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
