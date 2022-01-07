; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_compute_rtscts_dur.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_compute_rtscts_dur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32 }

@BRCMS_SHORT_PREAMBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_compute_rtscts_dur(%struct.brcms_c_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.brcms_c_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load %struct.brcms_c_info*, %struct.brcms_c_info** %9, align 8
  %20 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @get_sifs(i32 %21)
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %8
  %26 = load i32, i32* %18, align 4
  %27 = mul nsw i32 3, %26
  store i32 %27, i32* %17, align 4
  %28 = load %struct.brcms_c_info*, %struct.brcms_c_info** %9, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i64 @brcms_c_calc_cts_time(%struct.brcms_c_info* %28, i32 %29, i32 %30)
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* %17, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %17, align 4
  br label %38

35:                                               ; preds = %8
  %36 = load i32, i32* %18, align 4
  %37 = mul nsw i32 2, %36
  store i32 %37, i32* %17, align 4
  br label %38

38:                                               ; preds = %35, %25
  %39 = load %struct.brcms_c_info*, %struct.brcms_c_info** %9, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i64 @brcms_c_calc_frame_time(%struct.brcms_c_info* %39, i32 %40, i32 %41, i32 %42)
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %17, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %38
  %50 = load %struct.brcms_c_info*, %struct.brcms_c_info** %9, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @BRCMS_SHORT_PREAMBLE, align 4
  %53 = call i64 @brcms_c_calc_ba_time(%struct.brcms_c_info* %50, i32 %51, i32 %52)
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %17, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %17, align 4
  br label %65

57:                                               ; preds = %38
  %58 = load %struct.brcms_c_info*, %struct.brcms_c_info** %9, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i64 @brcms_c_calc_ack_time(%struct.brcms_c_info* %58, i32 %59, i32 %60)
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* %17, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %17, align 4
  br label %65

65:                                               ; preds = %57, %49
  %66 = load i32, i32* %17, align 4
  ret i32 %66
}

declare dso_local i32 @get_sifs(i32) #1

declare dso_local i64 @brcms_c_calc_cts_time(%struct.brcms_c_info*, i32, i32) #1

declare dso_local i64 @brcms_c_calc_frame_time(%struct.brcms_c_info*, i32, i32, i32) #1

declare dso_local i64 @brcms_c_calc_ba_time(%struct.brcms_c_info*, i32, i32) #1

declare dso_local i64 @brcms_c_calc_ack_time(%struct.brcms_c_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
