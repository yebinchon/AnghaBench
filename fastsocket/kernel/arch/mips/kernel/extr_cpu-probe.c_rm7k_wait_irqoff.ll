; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_cpu-probe.c_rm7k_wait_irqoff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_cpu-probe.c_rm7k_wait_irqoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rm7k_wait_irqoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rm7k_wait_irqoff() #0 {
  %1 = call i32 (...) @local_irq_disable()
  %2 = call i32 (...) @need_resched()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  call void asm sideeffect "\09.set\09push\09\09\09\09\09\0A\09.set\09mips3\09\09\09\09\09\0A\09.set\09noat\09\09\09\09\09\0A\09mfc0\09$$1, $$12\09\09\09\09\09\0A\09sync\09\09\09\09\09\09\0A\09mtc0\09$$1, $$12\09\09# stalls until W stage\09\0A\09wait\09\09\09\09\09\09\0A\09mtc0\09$$1, $$12\09\09# stalls until W stage\09\0A\09.set\09pop\09\09\09\09\09\0A", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %5

5:                                                ; preds = %4, %0
  %6 = call i32 (...) @local_irq_enable()
  ret void
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 328, i32 351, i32 374, i32 396, i32 421, i32 439, i32 484, i32 502, i32 547}
