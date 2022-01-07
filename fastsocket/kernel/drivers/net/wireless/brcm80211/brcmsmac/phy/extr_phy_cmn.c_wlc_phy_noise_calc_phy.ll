; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_noise_calc_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_noise_calc_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, i64**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@PHY_CORE_MAX = common dso_local global i32 0, align 4
@PHY_NOISE_OFFSETFACT_4322 = common dso_local global i64 0, align 8
@PHY_NOISE_WINDOW_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_phy*, i32*, i64*)* @wlc_phy_noise_calc_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_phy_noise_calc_phy(%struct.brcms_phy* %0, i32* %1, i64* %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load i32, i32* @PHY_CORE_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i64, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = mul nuw i64 8, %11
  %15 = trunc i64 %14 to i32
  %16 = call i32 @memset(i64* %13, i32 0, i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %19 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @wlc_phy_compute_dB(i32* %17, i64* %13, i64 %21)
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %49, %3
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %26 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %24, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %23
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %32 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @NREV_GE(i32 %34, i32 3)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i64, i64* @PHY_NOISE_OFFSETFACT_4322, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i64, i64* %13, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, %38
  store i64 %42, i64* %40, align 8
  br label %48

43:                                               ; preds = %30
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i64, i64* %13, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -99
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %43, %37
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %9, align 8
  br label %23

52:                                               ; preds = %23
  store i64 0, i64* %9, align 8
  br label %53

53:                                               ; preds = %80, %52
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %56 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %54, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %53
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds i64, i64* %13, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %65 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %64, i32 0, i32 1
  %66 = load i64**, i64*** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i64*, i64** %66, i64 %67
  %69 = load i64*, i64** %68, align 8
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %71 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  store i64 %63, i64* %73, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds i64, i64* %13, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %6, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  store i64 %76, i64* %79, align 8
  br label %80

80:                                               ; preds = %60
  %81 = load i64, i64* %9, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %9, align 8
  br label %53

83:                                               ; preds = %53
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %85 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @PHY_NOISE_WINDOW_SZ, align 4
  %88 = call i64 @MODINC_POW2(i64 %86, i32 %87)
  %89 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %90 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %91)
  ret i32 1
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @wlc_phy_compute_dB(i32*, i64*, i64) #2

declare dso_local i64 @NREV_GE(i32, i32) #2

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
