; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sun4m_irq.c_sun4m_enable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sun4m_irq.c_sun4m_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@sun4m_irq_global = common dso_local global %struct.TYPE_4__* null, align 8
@sun4m_irq_percpu = common dso_local global %struct.TYPE_3__** null, align 8
@SUN4M_INT_FLOPPY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sun4m_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4m_enable_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i32 (...) @smp_processor_id()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 11
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @sun4m_get_irqmask(i32 %10)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = load i32, i32* %2, align 4
  %15 = icmp ugt i32 %14, 15
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = load i64, i64* %3, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sun4m_irq_global, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @sbus_writel(i64 %17, i32* %19)
  br label %30

21:                                               ; preds = %9
  %22 = load i64, i64* %3, align 8
  %23 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @sun4m_irq_percpu, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %23, i64 %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @sbus_writel(i64 %22, i32* %28)
  br label %30

30:                                               ; preds = %21, %16
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @local_irq_restore(i64 %31)
  br label %42

33:                                               ; preds = %1
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @local_irq_save(i64 %34)
  %36 = load i64, i64* @SUN4M_INT_FLOPPY, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sun4m_irq_global, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @sbus_writel(i64 %36, i32* %38)
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @local_irq_restore(i64 %40)
  br label %42

42:                                               ; preds = %33, %30
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
