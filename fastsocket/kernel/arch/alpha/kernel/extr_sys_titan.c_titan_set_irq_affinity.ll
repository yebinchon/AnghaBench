; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_sys_titan.c_titan_set_irq_affinity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_sys_titan.c_titan_set_irq_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }

@titan_irq_lock = common dso_local global i32 0, align 4
@titan_cached_irq_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cpumask*)* @titan_set_irq_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @titan_set_irq_affinity(i32 %0, %struct.cpumask* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpumask*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.cpumask* %1, %struct.cpumask** %4, align 8
  %5 = call i32 @spin_lock(i32* @titan_irq_lock)
  %6 = load i32, i32* %3, align 4
  %7 = sub i32 %6, 16
  %8 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %9 = getelementptr inbounds %struct.cpumask, %struct.cpumask* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @titan_cpu_set_irq_affinity(i32 %7, i32 %10)
  %12 = load i32, i32* @titan_cached_irq_mask, align 4
  %13 = call i32 @titan_update_irq_hw(i32 %12)
  %14 = call i32 @spin_unlock(i32* @titan_irq_lock)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @titan_cpu_set_irq_affinity(i32, i32) #1

declare dso_local i32 @titan_update_irq_hw(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
