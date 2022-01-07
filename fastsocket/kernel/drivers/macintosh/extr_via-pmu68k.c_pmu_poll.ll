; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu68k.c_pmu_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu68k.c_pmu_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@via1 = common dso_local global i32* null, align 8
@IFR = common dso_local global i64 0, align 8
@SR_INT = common dso_local global i32 0, align 4
@IRQ_MAC_ADB_SR = common dso_local global i32 0, align 4
@CB1_INT = common dso_local global i32 0, align 4
@IRQ_MAC_ADB_CL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmu_poll() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 @local_irq_save(i64 %2)
  %4 = load i32*, i32** @via1, align 8
  %5 = load i64, i64* @IFR, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SR_INT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %0
  %12 = load i32, i32* @SR_INT, align 4
  %13 = load i32*, i32** @via1, align 8
  %14 = load i64, i64* @IFR, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @IRQ_MAC_ADB_SR, align 4
  %17 = call i32 @pmu_interrupt(i32 %16, i32* null)
  br label %18

18:                                               ; preds = %11, %0
  %19 = load i32*, i32** @via1, align 8
  %20 = load i64, i64* @IFR, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CB1_INT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load i32, i32* @CB1_INT, align 4
  %28 = load i32*, i32** @via1, align 8
  %29 = load i64, i64* @IFR, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @IRQ_MAC_ADB_CL, align 4
  %32 = call i32 @pmu_interrupt(i32 %31, i32* null)
  br label %33

33:                                               ; preds = %26, %18
  %34 = load i64, i64* %1, align 8
  %35 = call i32 @local_irq_restore(i64 %34)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @pmu_interrupt(i32, i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
