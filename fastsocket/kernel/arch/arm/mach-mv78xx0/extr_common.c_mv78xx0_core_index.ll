; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mv78xx0/extr_common.c_mv78xx0_core_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-mv78xx0/extr_common.c_mv78xx0_core_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv78xx0_core_index() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 asm "mrc p15, 1, $0, c15, c1, 0", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = and i32 %3, 16384
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 216}
