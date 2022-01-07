; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_chanspec_band_validch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_chanspec_band_validch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.brcms_phy_pub = type { i32 }
%struct.brcms_chanvec = type { i32 }
%struct.brcms_phy = type { i64 }

@chan_info_all = common dso_local global %struct.TYPE_3__* null, align 8
@FIRST_REF5_CHANNUM = common dso_local global i64 0, align 8
@LAST_REF5_CHANNUM = common dso_local global i64 0, align 8
@BRCM_BAND_2G = common dso_local global i64 0, align 8
@CH_MAX_2G_CHANNEL = common dso_local global i64 0, align 8
@BRCM_BAND_5G = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_chanspec_band_validch(%struct.brcms_phy_pub* %0, i64 %1, %struct.brcms_chanvec* %2) #0 {
  %4 = alloca %struct.brcms_phy_pub*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.brcms_chanvec*, align 8
  %7 = alloca %struct.brcms_phy*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.brcms_chanvec* %2, %struct.brcms_chanvec** %6, align 8
  %10 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %4, align 8
  %11 = bitcast %struct.brcms_phy_pub* %10 to %struct.brcms_phy*
  store %struct.brcms_phy* %11, %struct.brcms_phy** %7, align 8
  %12 = load %struct.brcms_chanvec*, %struct.brcms_chanvec** %6, align 8
  %13 = call i32 @memset(%struct.brcms_chanvec* %12, i32 0, i32 4)
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %61, %3
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chan_info_all, align 8
  %17 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %16)
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %64

19:                                               ; preds = %14
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chan_info_all, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %26 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %19
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @FIRST_REF5_CHANNUM, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @LAST_REF5_CHANNUM, align 8
  %36 = icmp ule i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %61

38:                                               ; preds = %33, %29, %19
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @BRCM_BAND_2G, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @CH_MAX_2G_CHANNEL, align 8
  %45 = icmp ule i64 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %42, %38
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @BRCM_BAND_5G, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @CH_MAX_2G_CHANNEL, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50, %42
  %55 = load %struct.brcms_chanvec*, %struct.brcms_chanvec** %6, align 8
  %56 = getelementptr inbounds %struct.brcms_chanvec, %struct.brcms_chanvec* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @setbit(i32 %57, i64 %58)
  br label %60

60:                                               ; preds = %54, %50, %46
  br label %61

61:                                               ; preds = %60, %37
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %8, align 8
  br label %14

64:                                               ; preds = %14
  ret void
}

declare dso_local i32 @memset(%struct.brcms_chanvec*, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @setbit(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
