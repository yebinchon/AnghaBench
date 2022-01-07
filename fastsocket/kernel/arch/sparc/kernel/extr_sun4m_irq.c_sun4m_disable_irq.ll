; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sun4m_irq.c_sun4m_disable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sun4m_irq.c_sun4m_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@sun4m_irq_global = common dso_local global %struct.TYPE_4__* null, align 8
@sun4m_irq_percpu = common dso_local global %struct.TYPE_3__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sun4m_disable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4m_disable_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i32 (...) @smp_processor_id()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @sun4m_get_irqmask(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @local_irq_save(i64 %9)
  %11 = load i32, i32* %2, align 4
  %12 = icmp ugt i32 %11, 15
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sun4m_irq_global, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = call i32 @sbus_writel(i64 %14, i32* %16)
  br label %27

18:                                               ; preds = %1
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sun4m_irq_percpu, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %20, i64 %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @sbus_writel(i64 %19, i32* %25)
  br label %27

27:                                               ; preds = %18, %13
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @local_irq_restore(i64 %28)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @sun4m_get_irqmask(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @sbus_writel(i64, i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
