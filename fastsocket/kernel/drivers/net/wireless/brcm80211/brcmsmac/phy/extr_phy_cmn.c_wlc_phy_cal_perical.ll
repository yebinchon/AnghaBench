; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_cal_perical.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_cal_perical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { i64, i32, i8*, i32, i32, i32, i32 }

@PHY_PERICAL_DISABLE = common dso_local global i64 0, align 8
@PHY_PERICAL_MANUAL = common dso_local global i64 0, align 8
@PHY_PERICAL_MPHASE = common dso_local global i64 0, align 8
@PHY_PERICAL_INIT_DELAY = common dso_local global i32 0, align 4
@PHY_PERICAL_FULL = common dso_local global i32 0, align 4
@PHY_PERICAL_WDOG_DELAY = common dso_local global i32 0, align 4
@PHY_PERICAL_SPHASE = common dso_local global i64 0, align 8
@PHY_PERICAL_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_cal_perical(%struct.brcms_phy_pub* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy_pub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.brcms_phy*, align 8
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %9 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %3, align 8
  %10 = bitcast %struct.brcms_phy_pub* %9 to %struct.brcms_phy*
  store %struct.brcms_phy* %10, %struct.brcms_phy** %8, align 8
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %12 = call i32 @ISNPHY(%struct.brcms_phy* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %166

15:                                               ; preds = %2
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %17 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PHY_PERICAL_DISABLE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %23 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PHY_PERICAL_MANUAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %15
  br label %166

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %165 [
    i32 133, label %30
    i32 131, label %31
    i32 132, label %49
    i32 130, label %49
    i32 129, label %49
    i32 128, label %81
  ]

30:                                               ; preds = %28
  br label %166

31:                                               ; preds = %28
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %33 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PHY_PERICAL_MPHASE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %39 = call i32 @PHY_PERICAL_MPHASE_PENDING(%struct.brcms_phy* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %43 = call i32 @wlc_phy_cal_perical_mphase_reset(%struct.brcms_phy* %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %46 = load i32, i32* @PHY_PERICAL_INIT_DELAY, align 4
  %47 = call i32 @wlc_phy_cal_perical_mphase_schedule(%struct.brcms_phy* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %31
  br label %166

49:                                               ; preds = %28, %28, %28
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %51 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PHY_PERICAL_MPHASE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %57 = call i32 @PHY_PERICAL_MPHASE_PENDING(%struct.brcms_phy* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %61 = call i32 @wlc_phy_cal_perical_mphase_reset(%struct.brcms_phy* %60)
  br label %62

62:                                               ; preds = %59, %55, %49
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %64 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %63, i32 0, i32 1
  store i32 1, i32* %64, align 8
  %65 = load i32, i32* @PHY_PERICAL_FULL, align 4
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %67 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 4
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %69 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %62
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %74 = call i8* @wlc_phy_tempsense_nphy(%struct.brcms_phy* %73)
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %76 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %72, %62
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %79 = load i32, i32* @PHY_PERICAL_FULL, align 4
  %80 = call i32 @wlc_phy_cal_perical_nphy_run(%struct.brcms_phy* %78, i32 %79)
  br label %166

81:                                               ; preds = %28
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %83 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %134

86:                                               ; preds = %81
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %88 = call i8* @wlc_phy_tempsense_nphy(%struct.brcms_phy* %87)
  store i8* %88, i8** %5, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %91 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ugt i8* %89, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %86
  %95 = load i8*, i8** %5, align 8
  %96 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %97 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = ptrtoint i8* %95 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  br label %110

102:                                              ; preds = %86
  %103 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %104 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  br label %110

110:                                              ; preds = %102, %94
  %111 = phi i64 [ %101, %94 ], [ %109, %102 ]
  %112 = inttoptr i64 %111 to i8*
  store i8* %112, i8** %6, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %115 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i8*
  %119 = icmp ult i8* %113, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %110
  %121 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %122 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %125 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store i32 0, i32* %7, align 4
  br label %133

129:                                              ; preds = %120, %110
  %130 = load i8*, i8** %5, align 8
  %131 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %132 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %129, %128
  br label %134

134:                                              ; preds = %133, %81
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %164

137:                                              ; preds = %134
  %138 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %139 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @PHY_PERICAL_MPHASE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %137
  %144 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %145 = call i32 @PHY_PERICAL_MPHASE_PENDING(%struct.brcms_phy* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %149 = load i32, i32* @PHY_PERICAL_WDOG_DELAY, align 4
  %150 = call i32 @wlc_phy_cal_perical_mphase_schedule(%struct.brcms_phy* %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %143
  br label %163

152:                                              ; preds = %137
  %153 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %154 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @PHY_PERICAL_SPHASE, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %160 = load i32, i32* @PHY_PERICAL_AUTO, align 4
  %161 = call i32 @wlc_phy_cal_perical_nphy_run(%struct.brcms_phy* %159, i32 %160)
  br label %162

162:                                              ; preds = %158, %152
  br label %163

163:                                              ; preds = %162, %151
  br label %164

164:                                              ; preds = %163, %134
  br label %166

165:                                              ; preds = %28
  br label %166

166:                                              ; preds = %14, %27, %165, %164, %77, %48, %30
  ret void
}

declare dso_local i32 @ISNPHY(%struct.brcms_phy*) #1

declare dso_local i32 @PHY_PERICAL_MPHASE_PENDING(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_cal_perical_mphase_reset(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_cal_perical_mphase_schedule(%struct.brcms_phy*, i32) #1

declare dso_local i8* @wlc_phy_tempsense_nphy(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_cal_perical_nphy_run(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
