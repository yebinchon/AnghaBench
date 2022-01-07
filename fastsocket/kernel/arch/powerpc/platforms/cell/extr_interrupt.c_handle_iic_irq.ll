; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_interrupt.c_handle_iic_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_interrupt.c_handle_iic_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, %struct.TYPE_2__*, %struct.irqaction* }
%struct.TYPE_2__ = type { i32 (i32)* }
%struct.irqaction = type { i32 }

@IRQ_REPLAY = common dso_local global i32 0, align 4
@IRQ_WAITING = common dso_local global i32 0, align 4
@IRQ_INPROGRESS = common dso_local global i32 0, align 4
@IRQ_DISABLED = common dso_local global i32 0, align 4
@IRQ_PENDING = common dso_local global i32 0, align 4
@noirqdebug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @handle_iic_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_iic_irq(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca %struct.irqaction*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %7 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %8 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load i32, i32* @IRQ_REPLAY, align 4
  %11 = load i32, i32* @IRQ_WAITING, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %15 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %19 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IRQ_INPROGRESS, align 4
  %22 = load i32, i32* @IRQ_DISABLED, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %2
  %27 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %28 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %27, i32 0, i32 3
  %29 = load %struct.irqaction*, %struct.irqaction** %28, align 8
  %30 = icmp ne %struct.irqaction* %29, null
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %26, %2
  %33 = phi i1 [ true, %2 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @IRQ_PENDING, align 4
  %39 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %40 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %104

43:                                               ; preds = %32
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %46 = call i32 @kstat_incr_irqs_this_cpu(i32 %44, %struct.irq_desc* %45)
  %47 = load i32, i32* @IRQ_INPROGRESS, align 4
  %48 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %49 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %87, %43
  %53 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %54 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %53, i32 0, i32 3
  %55 = load %struct.irqaction*, %struct.irqaction** %54, align 8
  store %struct.irqaction* %55, %struct.irqaction** %5, align 8
  %56 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %57 = icmp ne %struct.irqaction* %56, null
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %104

63:                                               ; preds = %52
  %64 = load i32, i32* @IRQ_PENDING, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %67 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %71 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %70, i32 0, i32 1
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %75 = call i32 @handle_IRQ_event(i32 %73, %struct.irqaction* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* @noirqdebug, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %63
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @note_interrupt(i32 %79, %struct.irq_desc* %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %63
  %84 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %85 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %84, i32 0, i32 1
  %86 = call i32 @spin_lock(i32* %85)
  br label %87

87:                                               ; preds = %83
  %88 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %89 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @IRQ_PENDING, align 4
  %92 = load i32, i32* @IRQ_DISABLED, align 4
  %93 = or i32 %91, %92
  %94 = and i32 %90, %93
  %95 = load i32, i32* @IRQ_PENDING, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %52, label %97

97:                                               ; preds = %87
  %98 = load i32, i32* @IRQ_INPROGRESS, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %101 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %97, %62, %37
  %105 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %106 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32 (i32)*, i32 (i32)** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = call i32 %109(i32 %110)
  %112 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %113 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %112, i32 0, i32 1
  %114 = call i32 @spin_unlock(i32* %113)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kstat_incr_irqs_this_cpu(i32, %struct.irq_desc*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @handle_IRQ_event(i32, %struct.irqaction*) #1

declare dso_local i32 @note_interrupt(i32, %struct.irq_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
