; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ns9xxx/extr_irq.c_handle_prio_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ns9xxx/extr_irq.c_handle_prio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, %struct.TYPE_2__*, %struct.irqaction* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }
%struct.irqaction = type { i32 }

@IRQ_INPROGRESS = common dso_local global i32 0, align 4
@IRQ_REPLAY = common dso_local global i32 0, align 4
@IRQ_WAITING = common dso_local global i32 0, align 4
@IRQ_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @handle_prio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_prio_irq(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca %struct.irqaction*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %7 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %8 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %11 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IRQ_INPROGRESS, align 4
  %14 = and i32 %12, %13
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load i32, i32* @IRQ_REPLAY, align 4
  %17 = load i32, i32* @IRQ_WAITING, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %21 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %26 = call i32 @kstat_incr_irqs_this_cpu(i32 %24, %struct.irq_desc* %25)
  %27 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %28 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %27, i32 0, i32 3
  %29 = load %struct.irqaction*, %struct.irqaction** %28, align 8
  store %struct.irqaction* %29, %struct.irqaction** %5, align 8
  %30 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %31 = icmp ne %struct.irqaction* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %34 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IRQ_DISABLED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %32, %2
  %40 = phi i1 [ true, %2 ], [ %38, %32 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %77

45:                                               ; preds = %39
  %46 = load i32, i32* @IRQ_INPROGRESS, align 4
  %47 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %48 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %52 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %56 = call i32 @handle_IRQ_event(i32 %54, %struct.irqaction* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @note_interrupt(i32 %57, %struct.irq_desc* %58, i32 %59)
  %61 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %62 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %61, i32 0, i32 1
  %63 = call i32 @spin_lock(i32* %62)
  %64 = load i32, i32* @IRQ_INPROGRESS, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %67 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %71 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @IRQ_DISABLED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %45
  br label %77

77:                                               ; preds = %76, %44
  %78 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %79 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32 (i32)*, i32 (i32)** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = call i32 %82(i32 %83)
  br label %85

85:                                               ; preds = %77, %45
  %86 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %87 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32 (i32)*, i32 (i32)** %89, align 8
  %91 = load i32, i32* %3, align 4
  %92 = call i32 %90(i32 %91)
  %93 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %94 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %93, i32 0, i32 1
  %95 = call i32 @spin_unlock(i32* %94)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kstat_incr_irqs_this_cpu(i32, %struct.irq_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @handle_IRQ_event(i32, %struct.irqaction*) #1

declare dso_local i32 @note_interrupt(i32, %struct.irq_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
