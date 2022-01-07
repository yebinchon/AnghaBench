; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_adjust_crsminpwr_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_adjust_crsminpwr_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i64)* @wlc_phy_adjust_crsminpwr_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_adjust_crsminpwr_nphy(%struct.brcms_phy* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %7 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @NREV_GE(i32 %9, i32 3)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %136

12:                                               ; preds = %2
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %14 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @CHSPEC_CHANNEL(i32 %15)
  %17 = icmp eq i32 %16, 11
  br i1 %17, label %18, label %84

18:                                               ; preds = %12
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %20 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @CHSPEC_IS40(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %84

24:                                               ; preds = %18
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %26 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %83, label %29

29:                                               ; preds = %24
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %31 = call i32 @read_phy_reg(%struct.brcms_phy* %30, i32 637)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 255
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %35 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 65280
  store i32 %39, i32* %5, align 4
  %40 = load i64, i64* %4, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @write_phy_reg(%struct.brcms_phy* %44, i32 637, i32 %45)
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %48 = call i32 @read_phy_reg(%struct.brcms_phy* %47, i32 640)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 255
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %52 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, 65280
  store i32 %56, i32* %5, align 4
  %57 = load i64, i64* %4, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @write_phy_reg(%struct.brcms_phy* %61, i32 640, i32 %62)
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %65 = call i32 @read_phy_reg(%struct.brcms_phy* %64, i32 643)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, 255
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %69 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, 65280
  store i32 %73, i32* %5, align 4
  %74 = load i64, i64* %4, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @write_phy_reg(%struct.brcms_phy* %78, i32 643, i32 %79)
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %82 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  br label %83

83:                                               ; preds = %29, %24
  br label %135

84:                                               ; preds = %18, %12
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %86 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %134

89:                                               ; preds = %84
  %90 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %91 = call i32 @read_phy_reg(%struct.brcms_phy* %90, i32 637)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = and i32 %92, 65280
  store i32 %93, i32* %5, align 4
  %94 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %95 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @write_phy_reg(%struct.brcms_phy* %101, i32 637, i32 %102)
  %104 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %105 = call i32 @read_phy_reg(%struct.brcms_phy* %104, i32 640)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = and i32 %106, 65280
  store i32 %107, i32* %5, align 4
  %108 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %109 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %5, align 4
  %115 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @write_phy_reg(%struct.brcms_phy* %115, i32 640, i32 %116)
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %119 = call i32 @read_phy_reg(%struct.brcms_phy* %118, i32 643)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = and i32 %120, 65280
  store i32 %121, i32* %5, align 4
  %122 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %123 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %5, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %5, align 4
  %129 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @write_phy_reg(%struct.brcms_phy* %129, i32 643, i32 %130)
  %132 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %133 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  br label %134

134:                                              ; preds = %89, %84
  br label %135

135:                                              ; preds = %134, %83
  br label %136

136:                                              ; preds = %135, %2
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @CHSPEC_CHANNEL(i32) #1

declare dso_local i64 @CHSPEC_IS40(i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
