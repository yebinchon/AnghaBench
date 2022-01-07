; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_get_median_noise_floor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_get_median_noise_floor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ATH5K_NF_CAL_HIST_MAX = common dso_local global i32 0, align 4
@ATH5K_DEBUG_CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cal %d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ath5k_hw*)* @ath5k_hw_get_median_noise_floor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ath5k_hw_get_median_noise_floor(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %8 = load i32, i32* @ATH5K_NF_CAL_HIST_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i64, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nuw i64 8, %9
  %17 = trunc i64 %16 to i32
  %18 = call i32 @memcpy(i64* %11, i32 %15, i32 %17)
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %65, %1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ATH5K_NF_CAL_HIST_MAX, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %19
  store i32 1, i32* %7, align 4
  br label %25

25:                                               ; preds = %61, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @ATH5K_NF_CAL_HIST_MAX, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %27, %28
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %11, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %11, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %35, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %31
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %11, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %11, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %11, i64 %53
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %11, i64 %58
  store i64 %55, i64* %59, align 8
  br label %60

60:                                               ; preds = %42, %31
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %25

64:                                               ; preds = %25
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %19

68:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %82, %68
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @ATH5K_NF_CAL_HIST_MAX, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %75 = load i32, i32* @ATH5K_DEBUG_CALIBRATE, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %11, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %74, i32 %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %76, i64 %80)
  br label %82

82:                                               ; preds = %73
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %69

85:                                               ; preds = %69
  %86 = load i32, i32* @ATH5K_NF_CAL_HIST_MAX, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sdiv i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %11, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %92)
  ret i64 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i64*, i32, i32) #2

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
