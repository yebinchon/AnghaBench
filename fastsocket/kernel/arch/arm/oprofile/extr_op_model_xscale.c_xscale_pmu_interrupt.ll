; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/oprofile/extr_op_model_xscale.c_xscale_pmu_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/oprofile/extr_op_model_xscale.c_xscale_pmu_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i64 }

@pmu = common dso_local global %struct.TYPE_4__* null, align 8
@PMU_XSC1 = common dso_local global i64 0, align 8
@CCNT = common dso_local global i32 0, align 4
@MAX_COUNTERS = common dso_local global i32 0, align 4
@results = common dso_local global %struct.TYPE_3__* null, align 8
@PMU_ENABLE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xscale_pmu_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xscale_pmu_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pmu, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PMU_XSC1, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @__xsc1_check_ctrs()
  br label %16

14:                                               ; preds = %2
  %15 = call i32 (...) @__xsc2_check_ctrs()
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* @CCNT, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %52, %16
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MAX_COUNTERS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @results, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %52

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @results, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = sub nsw i32 0, %39
  %41 = call i32 @write_counter(i32 %32, i32 %40)
  %42 = call i32 (...) @get_irq_regs()
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @oprofile_add_sample(i32 %42, i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @results, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %31, %30
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %18

55:                                               ; preds = %18
  %56 = call i32 (...) @read_pmnc()
  %57 = load i32, i32* @PMU_ENABLE, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @write_pmnc(i32 %59)
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %61
}

declare dso_local i32 @__xsc1_check_ctrs(...) #1

declare dso_local i32 @__xsc2_check_ctrs(...) #1

declare dso_local i32 @write_counter(i32, i32) #1

declare dso_local i32 @oprofile_add_sample(i32, i32) #1

declare dso_local i32 @get_irq_regs(...) #1

declare dso_local i32 @read_pmnc(...) #1

declare dso_local i32 @write_pmnc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
