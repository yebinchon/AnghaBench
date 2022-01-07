; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_noise_sample_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_noise_sample_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PHY_NOISE_FIXED_VAL_NPHY = common dso_local global i64 0, align 8
@M_JSSI_AUX = common dso_local global i32 0, align 4
@D11_CURCHANNEL_MAX = common dso_local global i32 0, align 4
@M_PWRIND_MAP0 = common dso_local global i32 0, align 4
@M_PWRIND_MAP1 = common dso_local global i32 0, align 4
@M_PWRIND_MAP2 = common dso_local global i32 0, align 4
@M_PWRIND_MAP3 = common dso_local global i32 0, align 4
@M_JSSI_0 = common dso_local global i32 0, align 4
@PHY_NOISE_FIXED_VAL_LCNPHY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_noise_sample_intr(%struct.brcms_phy_pub* %0) #0 {
  %2 = alloca %struct.brcms_phy_pub*, align 8
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %2, align 8
  %16 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %2, align 8
  %17 = bitcast %struct.brcms_phy_pub* %16 to %struct.brcms_phy*
  store %struct.brcms_phy* %17, %struct.brcms_phy** %3, align 8
  store i32 0, i32* %5, align 4
  %18 = load i64, i64* @PHY_NOISE_FIXED_VAL_NPHY, align 8
  store i64 %18, i64* %6, align 8
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %20 = call i64 @ISLCNPHY(%struct.brcms_phy* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %118

22:                                               ; preds = %1
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %24 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @M_JSSI_AUX, align 4
  %29 = call i32 @wlapi_bmac_read_shm(i32 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @D11_CURCHANNEL_MAX, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %5, align 4
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %34 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @M_PWRIND_MAP0, align 4
  %39 = call i32 @wlapi_bmac_read_shm(i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %41 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @M_PWRIND_MAP1, align 4
  %46 = call i32 @wlapi_bmac_read_shm(i32 %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = shl i32 %47, 16
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %52 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @M_PWRIND_MAP2, align 4
  %57 = call i32 @wlapi_bmac_read_shm(i32 %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %59 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @M_PWRIND_MAP3, align 4
  %64 = call i32 @wlapi_bmac_read_shm(i32 %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = shl i32 %65, 16
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %69, %70
  %72 = ashr i32 %71, 6
  store i32 %72, i32* %7, align 4
  store i32 68, i32* %14, align 4
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %74 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @M_JSSI_0, align 4
  %79 = call i32 @wlapi_bmac_read_shm(i32 %77, i32 %78)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %115

82:                                               ; preds = %22
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 500
  br i1 %84, label %85, label %115

85:                                               ; preds = %82
  %86 = load i32, i32* %15, align 4
  %87 = and i32 %86, 49152
  %88 = icmp eq i32 %87, 16384
  br i1 %88, label %89, label %115

89:                                               ; preds = %85
  %90 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %91 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @wlc_phy_compute_dB(i32* %7, i64* %6, i32 %93)
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %96 = call i32 @read_phy_reg(%struct.brcms_phy* %95, i32 1076)
  %97 = and i32 %96, 255
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp sgt i32 %98, 127
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load i32, i32* %12, align 4
  %102 = sub nsw i32 %101, 256
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %100, %89
  %104 = load i32, i32* %12, align 4
  %105 = sub nsw i32 %104, 30
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %6, align 8
  %108 = add nsw i64 %107, %106
  store i64 %108, i64* %6, align 8
  %109 = load i32, i32* %14, align 4
  %110 = and i32 %109, 511
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %6, align 8
  %114 = sub nsw i64 %113, %112
  store i64 %114, i64* %6, align 8
  br label %117

115:                                              ; preds = %85, %82, %22
  %116 = load i64, i64* @PHY_NOISE_FIXED_VAL_LCNPHY, align 8
  store i64 %116, i64* %6, align 8
  br label %117

117:                                              ; preds = %115, %103
  br label %136

118:                                              ; preds = %1
  %119 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %120 = call i64 @ISNPHY(%struct.brcms_phy* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %118
  %123 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %124 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @M_JSSI_AUX, align 4
  %129 = call i32 @wlapi_bmac_read_shm(i32 %127, i32 %128)
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @D11_CURCHANNEL_MAX, align 4
  %132 = and i32 %130, %131
  store i32 %132, i32* %5, align 4
  %133 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %134 = call i64 @wlc_phy_noise_read_shmem(%struct.brcms_phy* %133)
  store i64 %134, i64* %6, align 8
  br label %135

135:                                              ; preds = %122, %118
  br label %136

136:                                              ; preds = %135, %117
  %137 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %138 = load i32, i32* %5, align 4
  %139 = load i64, i64* %6, align 8
  %140 = call i32 @wlc_phy_noise_cb(%struct.brcms_phy* %137, i32 %138, i64 %139)
  ret void
}

declare dso_local i64 @ISLCNPHY(%struct.brcms_phy*) #1

declare dso_local i32 @wlapi_bmac_read_shm(i32, i32) #1

declare dso_local i32 @wlc_phy_compute_dB(i32*, i64*, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i64 @ISNPHY(%struct.brcms_phy*) #1

declare dso_local i64 @wlc_phy_noise_read_shmem(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_noise_cb(%struct.brcms_phy*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
