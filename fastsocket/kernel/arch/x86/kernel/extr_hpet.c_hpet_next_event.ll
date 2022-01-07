; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_hpet.c_hpet_next_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_hpet.c_hpet_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@HPET_COUNTER = common dso_local global i32 0, align 4
@HPET_MIN_CYCLES = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*, i32)* @hpet_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpet_next_event(i64 %0, %struct.clock_event_device* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clock_event_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @HPET_COUNTER, align 4
  %10 = call i64 @hpet_readl(i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %7, align 8
  %13 = add nsw i64 %12, %11
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @HPET_Tn_CMP(i32 %15)
  %17 = call i32 @hpet_writel(i64 %14, i32 %16)
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @HPET_COUNTER, align 4
  %20 = call i64 @hpet_readl(i32 %19)
  %21 = sub nsw i64 %18, %20
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @HPET_MIN_CYCLES, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ETIME, align 4
  %27 = sub nsw i32 0, %26
  br label %29

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32 [ %27, %25 ], [ 0, %28 ]
  ret i32 %30
}

declare dso_local i64 @hpet_readl(i32) #1

declare dso_local i32 @hpet_writel(i64, i32) #1

declare dso_local i32 @HPET_Tn_CMP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
