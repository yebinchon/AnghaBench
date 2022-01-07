; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_uv_time.c_uv_intr_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_uv_time.c_uv_intr_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UVH_EVENT_OCCURRED0 = common dso_local global i32 0, align 4
@UV1H_EVENT_OCCURRED0_RTC1_MASK = common dso_local global i32 0, align 4
@UVXH_EVENT_OCCURRED2 = common dso_local global i32 0, align 4
@UVXH_EVENT_OCCURRED2_RTC_1_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uv_intr_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_intr_pending(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i64 (...) @is_uv1_hub()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @UVH_EVENT_OCCURRED0, align 4
  %9 = call i32 @uv_read_global_mmr64(i32 %7, i32 %8)
  %10 = load i32, i32* @UV1H_EVENT_OCCURRED0_RTC1_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %2, align 4
  br label %23

12:                                               ; preds = %1
  %13 = call i64 (...) @is_uvx_hub()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @UVXH_EVENT_OCCURRED2, align 4
  %18 = call i32 @uv_read_global_mmr64(i32 %16, i32 %17)
  %19 = load i32, i32* @UVXH_EVENT_OCCURRED2_RTC_1_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %2, align 4
  br label %23

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %15, %6
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @is_uv1_hub(...) #1

declare dso_local i32 @uv_read_global_mmr64(i32, i32) #1

declare dso_local i64 @is_uvx_hub(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
