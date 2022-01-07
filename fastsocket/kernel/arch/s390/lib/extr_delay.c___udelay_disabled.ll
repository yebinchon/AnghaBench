; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/lib/extr_delay.c___udelay_disabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/lib/extr_delay.c___udelay_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@psw_kernel_bits = common dso_local global i64 0, align 8
@PSW_MASK_WAIT = common dso_local global i64 0, align 8
@PSW_MASK_EXT = common dso_local global i64 0, align 8
@S390_lowcore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @__udelay_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__udelay_disabled(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* @psw_kernel_bits, align 8
  %9 = load i64, i64* @PSW_MASK_WAIT, align 8
  %10 = or i64 %8, %9
  %11 = load i64, i64* @PSW_MASK_EXT, align 8
  %12 = or i64 %10, %11
  store i64 %12, i64* %3, align 8
  %13 = call i64 (...) @get_clock()
  %14 = load i64, i64* %2, align 8
  %15 = shl i64 %14, 12
  %16 = add i64 %13, %15
  store i64 %16, i64* %7, align 8
  %17 = call i64 (...) @local_tick_disable()
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @__ctl_store(i64 %18, i32 0, i32 0)
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, 4294901984
  %22 = or i64 %21, 2048
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @__ctl_load(i64 %23, i32 0, i32 0)
  %25 = call i32 (...) @lockdep_off()
  br label %26

26:                                               ; preds = %33, %1
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @set_clock_comparator(i64 %27)
  %29 = call i32 (...) @trace_hardirqs_on()
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @__load_psw_mask(i64 %30)
  %32 = call i32 (...) @local_irq_disable()
  br label %33

33:                                               ; preds = %26
  %34 = call i64 (...) @get_clock()
  %35 = load i64, i64* %7, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %26, label %37

37:                                               ; preds = %33
  %38 = call i32 (...) @lockdep_on()
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @__ctl_load(i64 %39, i32 0, i32 0)
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @local_tick_enable(i64 %41)
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %44 = call i32 @set_clock_comparator(i64 %43)
  ret void
}

declare dso_local i64 @get_clock(...) #1

declare dso_local i64 @local_tick_disable(...) #1

declare dso_local i32 @__ctl_store(i64, i32, i32) #1

declare dso_local i32 @__ctl_load(i64, i32, i32) #1

declare dso_local i32 @lockdep_off(...) #1

declare dso_local i32 @set_clock_comparator(i64) #1

declare dso_local i32 @trace_hardirqs_on(...) #1

declare dso_local i32 @__load_psw_mask(i64) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @lockdep_on(...) #1

declare dso_local i32 @local_tick_enable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
