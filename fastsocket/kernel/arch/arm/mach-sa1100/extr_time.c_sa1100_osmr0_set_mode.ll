; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_time.c_sa1100_osmr0_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_time.c_sa1100_osmr0_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@OIER_E0 = common dso_local global i32 0, align 4
@OIER = common dso_local global i32 0, align 4
@OSSR_M0 = common dso_local global i32 0, align 4
@OSSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*)* @sa1100_osmr0_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100_osmr0_set_mode(i32 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %18 [
    i32 132, label %7
    i32 128, label %7
    i32 129, label %7
    i32 130, label %17
    i32 131, label %17
  ]

7:                                                ; preds = %2, %2, %2
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @raw_local_irq_save(i64 %8)
  %10 = load i32, i32* @OIER_E0, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* @OIER, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* @OIER, align 4
  %14 = load i32, i32* @OSSR_M0, align 4
  store i32 %14, i32* @OSSR, align 4
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @raw_local_irq_restore(i64 %15)
  br label %18

17:                                               ; preds = %2, %2
  br label %18

18:                                               ; preds = %2, %17, %7
  ret void
}

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
