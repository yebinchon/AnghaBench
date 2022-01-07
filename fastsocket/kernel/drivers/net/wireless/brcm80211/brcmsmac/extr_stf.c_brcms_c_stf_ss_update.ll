; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_stf.c_brcms_c_stf_ss_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_stf.c_brcms_c_stf_ss_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32, %struct.TYPE_2__*, %struct.brcms_band* }
%struct.TYPE_2__ = type { i64, i64, i32, i64 }
%struct.brcms_band = type { i64 }

@PHY_TXC1_MODE_SISO = common dso_local global i64 0, align 8
@PHY_TXC1_MODE_CDD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_stf_ss_update(%struct.brcms_c_info* %0, %struct.brcms_band* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca %struct.brcms_band*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %4, align 8
  store %struct.brcms_band* %1, %struct.brcms_band** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %10 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %15 = call i64 @BRCMS_STBC_CAP_PHY(%struct.brcms_c_info* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %2
  %18 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %19 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %17
  %25 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %26 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, -1
  br i1 %30, label %31, label %52

31:                                               ; preds = %24
  %32 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %33 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %46, label %38

38:                                               ; preds = %31
  %39 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %40 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* @PHY_TXC1_MODE_SISO, align 8
  %44 = call i64 @isset(i64* %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38, %31
  %47 = load i64, i64* @PHY_TXC1_MODE_SISO, align 8
  br label %50

48:                                               ; preds = %38
  %49 = load i64, i64* @PHY_TXC1_MODE_CDD, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i64 [ %47, %46 ], [ %49, %48 ]
  store i64 %51, i64* %8, align 8
  br label %75

52:                                               ; preds = %24, %17, %2
  %53 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %54 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %53, i32 0, i32 2
  %55 = load %struct.brcms_band*, %struct.brcms_band** %54, align 8
  %56 = load %struct.brcms_band*, %struct.brcms_band** %5, align 8
  %57 = icmp ne %struct.brcms_band* %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %92

60:                                               ; preds = %52
  %61 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %62 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i64, i64* @PHY_TXC1_MODE_SISO, align 8
  br label %73

69:                                               ; preds = %60
  %70 = load %struct.brcms_band*, %struct.brcms_band** %5, align 8
  %71 = getelementptr inbounds %struct.brcms_band, %struct.brcms_band* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  br label %73

73:                                               ; preds = %69, %67
  %74 = phi i64 [ %68, %67 ], [ %72, %69 ]
  store i64 %74, i64* %8, align 8
  br label %75

75:                                               ; preds = %73, %50
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %82 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i64 %80, i64* %84, align 8
  %85 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %86 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @brcms_b_band_stf_ss_set(i32 %87, i64 %88)
  br label %90

90:                                               ; preds = %79, %75
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %58
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @BRCMS_STBC_CAP_PHY(%struct.brcms_c_info*) #1

declare dso_local i64 @isset(i64*, i64) #1

declare dso_local i32 @brcms_b_band_stf_ss_set(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
