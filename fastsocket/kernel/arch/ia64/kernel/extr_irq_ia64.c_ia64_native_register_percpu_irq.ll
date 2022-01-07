; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_irq_ia64.c_ia64_native_register_percpu_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_irq_ia64.c_ia64_native_register_percpu_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32*, i32 }
%struct.irqaction = type { i32 }

@CPU_MASK_ALL = common dso_local global i32 0, align 4
@irq_desc = common dso_local global %struct.irq_desc* null, align 8
@IRQ_PER_CPU = common dso_local global i32 0, align 4
@irq_type_ia64_lsapic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_native_register_percpu_irq(i32 %0, %struct.irqaction* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irqaction*, align 8
  %5 = alloca %struct.irq_desc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irqaction* %1, %struct.irqaction** %4, align 8
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @CPU_MASK_ALL, align 4
  %11 = call i32 @bind_irq_vector(i32 %8, i32 %9, i32 %10)
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.irq_desc*, %struct.irq_desc** @irq_desc, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %13, i64 %15
  store %struct.irq_desc* %16, %struct.irq_desc** %5, align 8
  %17 = load i32, i32* @IRQ_PER_CPU, align 4
  %18 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %19 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.irq_desc*, %struct.irq_desc** %5, align 8
  %23 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %22, i32 0, i32 0
  store i32* @irq_type_ia64_lsapic, i32** %23, align 8
  %24 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %25 = icmp ne %struct.irqaction* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %29 = call i32 @setup_irq(i32 %27, %struct.irqaction* %28)
  br label %30

30:                                               ; preds = %26, %2
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bind_irq_vector(i32, i32, i32) #1

declare dso_local i32 @setup_irq(i32, %struct.irqaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
