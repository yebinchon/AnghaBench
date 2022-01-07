; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_uv_time.c_uv_rtc_find_next_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_uv_time.c_uv_rtc_find_next_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uv_rtc_timer_head = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@ULLONG_MAX = common dso_local global i64 0, align 8
@UVH_RTC1_INT_CONFIG = common dso_local global i32 0, align 4
@UVH_RTC1_INT_CONFIG_M_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uv_rtc_timer_head*, i32)* @uv_rtc_find_next_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv_rtc_find_next_timer(%struct.uv_rtc_timer_head* %0, i32 %1) #0 {
  %3 = alloca %struct.uv_rtc_timer_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.uv_rtc_timer_head* %0, %struct.uv_rtc_timer_head** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* @ULLONG_MAX, align 8
  store i64 %9, i64* %5, align 8
  store i32 -1, i32* %7, align 4
  %10 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %3, align 8
  %11 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %10, i32 0, i32 0
  store i32 -1, i32* %11, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %3, align 8
  %15 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %3, align 8
  %20 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i64, i64* %8, align 8
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %30, %18
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %12

37:                                               ; preds = %12
  %38 = load i32, i32* %7, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %3, align 8
  %43 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %3, align 8
  %45 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @uv_setup_intr(i32 %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %40
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @uv_rtc_send_IPI(i32 %57)
  br label %59

59:                                               ; preds = %56, %40
  br label %65

60:                                               ; preds = %37
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @UVH_RTC1_INT_CONFIG, align 4
  %63 = load i32, i32* @UVH_RTC1_INT_CONFIG_M_MASK, align 4
  %64 = call i32 @uv_write_global_mmr64(i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %59
  ret void
}

declare dso_local i64 @uv_setup_intr(i32, i64) #1

declare dso_local i32 @uv_rtc_send_IPI(i32) #1

declare dso_local i32 @uv_write_global_mmr64(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
