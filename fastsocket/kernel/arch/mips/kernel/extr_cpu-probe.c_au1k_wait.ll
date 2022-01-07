; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_cpu-probe.c_au1k_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_cpu-probe.c_au1k_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @au1k_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1k_wait() #0 {
  call void asm sideeffect "\09.set\09mips3\09\09\09\0A\09cache\090x14, 0($0)\09\09\0A\09cache\090x14, 32($0)\09\09\0A\09sync\09\09\09\09\0A\09nop\09\09\09\09\0A\09wait\09\09\09\09\0A\09nop\09\09\09\09\0A\09nop\09\09\09\09\0A\09nop\09\09\09\09\0A\09nop\09\09\09\09\0A\09.set\09mips0\09\09\09\0A", "r,~{dirflag},~{fpsr},~{flags}"(void ()* @au1k_wait) #1, !srcloc !2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 194, i32 216, i32 243, i32 271, i32 287, i32 302, i32 318, i32 333, i32 348, i32 363, i32 378}
