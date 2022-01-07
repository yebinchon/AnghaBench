; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_time.c_time_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_time.c_time_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@xtime = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IRQ_CPU_TIMER0 = common dso_local global i32 0, align 4
@timer_irq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @time_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 1980, i32* %1, align 4
  store i32 1, i32* %3, align 4
  store i32 1, i32* %2, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  call void @arch_gettod(i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6)
  %7 = load i32, i32* %1, align 4
  %8 = add i32 %7, 1900
  store i32 %8, i32* %1, align 4
  %9 = icmp ult i32 %8, 1970
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* %1, align 4
  %12 = add i32 %11, 100
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %10, %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @mktime(i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtime, i32 0, i32 0), align 8
  %21 = load i32, i32* @IRQ_CPU_TIMER0, align 4
  %22 = call i32 @setup_irq(i32 %21, i32* @timer_irq)
  %23 = call i32 (...) @time_divisor_init()
  ret void
}

declare dso_local void @arch_gettod(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mktime(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @setup_irq(i32, i32*) #1

declare dso_local i32 @time_divisor_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
