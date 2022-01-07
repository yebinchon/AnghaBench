; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/chipc/extr_chipcHw_reset.c_chipcHw_reset_run_from_aram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/chipc/extr_chipcHw_reset.c_chipcHw_reset_run_from_aram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chipcHw_reset_run_from_aram() #0 {
  call void asm sideeffect " nop                                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 MOV      r2,#0x80000000                                        \0A\09 LDR      r3,[r2,#8]                                            \0A\09 ORR      r3,r3,#0x20000                                        \0A\09 STR      r3,[r2,#8]                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 nop                                                            \0A\09 MOV      r3,#0x2                                               \0A\09 STR      r3,[r2,#0x80]                                         \0A\09 MOV      pc,pc                                                 \0A\09", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 182, i32 249, i32 322, i32 395, i32 468, i32 542, i32 615, i32 688, i32 761, i32 835, i32 908, i32 981, i32 1054, i32 1127, i32 1200, i32 1273, i32 1346, i32 1419, i32 1492, i32 1565, i32 1638, i32 1711, i32 1784, i32 1857, i32 1930, i32 2003, i32 2076, i32 2149, i32 2222, i32 2296, i32 2369, i32 2443}
