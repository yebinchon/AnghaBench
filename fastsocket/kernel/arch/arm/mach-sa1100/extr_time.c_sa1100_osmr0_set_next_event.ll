; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_time.c_sa1100_osmr0_set_next_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_time.c_sa1100_osmr0_set_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@OIER_E0 = common dso_local global i32 0, align 4
@OIER = common dso_local global i32 0, align 4
@OSCR = common dso_local global i64 0, align 8
@OSMR0 = common dso_local global i64 0, align 8
@MIN_OSCR_DELTA = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @sa1100_osmr0_set_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_osmr0_set_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @raw_local_irq_save(i64 %8)
  %10 = load i32, i32* @OIER_E0, align 4
  %11 = load i32, i32* @OIER, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* @OIER, align 4
  %13 = load i64, i64* @OSCR, align 8
  %14 = load i64, i64* %3, align 8
  %15 = add i64 %13, %14
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* @OSMR0, align 8
  %17 = load i64, i64* @OSCR, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @raw_local_irq_restore(i64 %18)
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @MIN_OSCR_DELTA, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @ETIME, align 4
  %28 = sub nsw i32 0, %27
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i32 [ %28, %26 ], [ 0, %29 ]
  ret i32 %31
}

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
