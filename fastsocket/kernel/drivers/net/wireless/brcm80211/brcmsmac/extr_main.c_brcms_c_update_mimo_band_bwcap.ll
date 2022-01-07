; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_update_mimo_band_bwcap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_update_mimo_band_bwcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.brcms_band**, %struct.TYPE_2__* }
%struct.brcms_band = type { i64, i32 }
%struct.TYPE_2__ = type { i64 }

@BRCM_BAND_5G = common dso_local global i64 0, align 8
@BRCMS_N_BW_40ALL = common dso_local global i64 0, align 8
@BRCMS_N_BW_20IN2G_40IN5G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*, i64)* @brcms_c_update_mimo_band_bwcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_update_mimo_band_bwcap(%struct.brcms_c_info* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.brcms_band*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %54, %2
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %10 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %8, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %7
  %16 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %17 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %16, i32 0, i32 0
  %18 = load %struct.brcms_band**, %struct.brcms_band*** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.brcms_band*, %struct.brcms_band** %18, i64 %19
  %21 = load %struct.brcms_band*, %struct.brcms_band** %20, align 8
  store %struct.brcms_band* %21, %struct.brcms_band** %6, align 8
  %22 = load %struct.brcms_band*, %struct.brcms_band** %6, align 8
  %23 = getelementptr inbounds %struct.brcms_band, %struct.brcms_band* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BRCM_BAND_5G, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %15
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @BRCMS_N_BW_40ALL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @BRCMS_N_BW_20IN2G_40IN5G, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27
  %36 = load %struct.brcms_band*, %struct.brcms_band** %6, align 8
  %37 = getelementptr inbounds %struct.brcms_band, %struct.brcms_band* %36, i32 0, i32 1
  store i32 1, i32* %37, align 8
  br label %41

38:                                               ; preds = %31
  %39 = load %struct.brcms_band*, %struct.brcms_band** %6, align 8
  %40 = getelementptr inbounds %struct.brcms_band, %struct.brcms_band* %39, i32 0, i32 1
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %35
  br label %53

42:                                               ; preds = %15
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @BRCMS_N_BW_40ALL, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.brcms_band*, %struct.brcms_band** %6, align 8
  %48 = getelementptr inbounds %struct.brcms_band, %struct.brcms_band* %47, i32 0, i32 1
  store i32 1, i32* %48, align 8
  br label %52

49:                                               ; preds = %42
  %50 = load %struct.brcms_band*, %struct.brcms_band** %6, align 8
  %51 = getelementptr inbounds %struct.brcms_band, %struct.brcms_band* %50, i32 0, i32 1
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %41
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %5, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %5, align 8
  br label %7

57:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
