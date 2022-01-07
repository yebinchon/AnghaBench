; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_irq_setup_virq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_irq_setup_virq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.irq_host = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.irq_host*, i32, i32)* }
%struct.TYPE_6__ = type { i32 }

@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@irq_map = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"irq: -> mapping failed, freeing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_host*, i32, i32)* @irq_setup_virq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_setup_virq(%struct.irq_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_host* %0, %struct.irq_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @IRQ_NOREQUEST, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.TYPE_6__* @get_irq_desc(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %9
  store i32 %14, i32* %12, align 4
  %15 = call i32 (...) @smp_wmb()
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @irq_map, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 %16, i32* %21, align 4
  %22 = call i32 (...) @smp_mb()
  %23 = load %struct.irq_host*, %struct.irq_host** %5, align 8
  %24 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64 (%struct.irq_host*, i32, i32)*, i64 (%struct.irq_host*, i32, i32)** %26, align 8
  %28 = load %struct.irq_host*, %struct.irq_host** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i64 %27(%struct.irq_host* %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @irq_free_virt(i32 %35, i32 1)
  store i32 -1, i32* %4, align 4
  br label %38

37:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_6__* @get_irq_desc(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @irq_free_virt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
