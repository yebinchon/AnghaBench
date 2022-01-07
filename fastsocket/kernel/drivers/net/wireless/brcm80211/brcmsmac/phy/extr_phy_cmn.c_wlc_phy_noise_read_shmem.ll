; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_noise_read_shmem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_noise_read_shmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, i64**, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@PHY_CORE_MAX = common dso_local global i32 0, align 4
@PHY_NOISE_FIXED_VAL_NPHY = common dso_local global i64 0, align 8
@PHY_NOISE_SAMPLE_LOG_NUM_UCODE = common dso_local global i64 0, align 8
@PHY_NOISE_WINDOW_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.brcms_phy*)* @wlc_phy_noise_read_shmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wlc_phy_noise_read_shmem(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %12 = load i32, i32* @PHY_CORE_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %16 = load i32, i32* @PHY_CORE_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  store i64 0, i64* %8, align 8
  %19 = load i64, i64* @PHY_NOISE_FIXED_VAL_NPHY, align 8
  store i64 %19, i64* %9, align 8
  %20 = mul nuw i64 8, %13
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i64* %15, i32 0, i32 %21)
  %23 = mul nuw i64 8, %17
  %24 = trunc i64 %23 to i32
  %25 = call i32 @memset(i64* %18, i32 0, i32 %24)
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %26

26:                                               ; preds = %78, %1
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %29 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %33, label %83

33:                                               ; preds = %26
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %35 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @M_PWRIND_MAP(i64 %39)
  %41 = call i32 @wlapi_bmac_read_shm(i32 %38, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %43 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %42, i32 0, i32 3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, 1
  %49 = call i32 @M_PWRIND_MAP(i64 %48)
  %50 = call i32 @wlapi_bmac_read_shm(i32 %46, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = shl i32 %51, 16
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i64, i64* %15, i64 %56
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %11, align 8
  %59 = getelementptr inbounds i64, i64* %15, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds i64, i64* %15, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %33
  %68 = load i64, i64* @PHY_NOISE_FIXED_VAL_NPHY, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds i64, i64* %18, i64 %69
  store i64 %68, i64* %70, align 8
  br label %77

71:                                               ; preds = %33
  %72 = load i64, i64* @PHY_NOISE_SAMPLE_LOG_NUM_UCODE, align 8
  %73 = load i64, i64* %11, align 8
  %74 = getelementptr inbounds i64, i64* %15, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = ashr i64 %75, %72
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %71, %67
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %10, align 8
  %80 = add i64 %79, 2
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %11, align 8
  br label %26

83:                                               ; preds = %26
  %84 = load i64, i64* %8, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %88 = call i32 @wlc_phy_noise_calc_phy(%struct.brcms_phy* %87, i64* %15, i64* %18)
  br label %89

89:                                               ; preds = %86, %83
  store i64 0, i64* %11, align 8
  br label %90

90:                                               ; preds = %121, %89
  %91 = load i64, i64* %11, align 8
  %92 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %93 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ult i64 %91, %95
  br i1 %96, label %97, label %124

97:                                               ; preds = %90
  %98 = load i64, i64* %11, align 8
  %99 = getelementptr inbounds i64, i64* %18, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %102 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %101, i32 0, i32 1
  %103 = load i64**, i64*** %102, align 8
  %104 = load i64, i64* %11, align 8
  %105 = getelementptr inbounds i64*, i64** %103, i64 %104
  %106 = load i64*, i64** %105, align 8
  %107 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %108 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i64, i64* %106, i64 %109
  store i64 %100, i64* %110, align 8
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr inbounds i64, i64* %18, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %9, align 8
  %115 = icmp sgt i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %97
  %117 = load i64, i64* %11, align 8
  %118 = getelementptr inbounds i64, i64* %18, i64 %117
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %9, align 8
  br label %120

120:                                              ; preds = %116, %97
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %11, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %11, align 8
  br label %90

124:                                              ; preds = %90
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %126 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* @PHY_NOISE_WINDOW_SZ, align 4
  %129 = call i64 @MODINC_POW2(i64 %127, i32 %128)
  %130 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %131 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load i64, i64* %9, align 8
  %133 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %133)
  ret i64 %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @wlapi_bmac_read_shm(i32, i32) #2

declare dso_local i32 @M_PWRIND_MAP(i64) #2

declare dso_local i32 @wlc_phy_noise_calc_phy(%struct.brcms_phy*, i64*, i64*) #2

declare dso_local i64 @MODINC_POW2(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
