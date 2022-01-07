; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/lib64/extr_udelay.c___delay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/lib64/extr_udelay.c___delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__delay(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call { i64, i64 } asm sideeffect "gettr\09tr0, $1\0A\09pta\09$$+4, tr0\0A\09addi\09$0, -1, $0\0A\09bne\09$0, r63, tr0\0A\09ptabs\09$1, tr0\0A\09", "=r,=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %4) #1, !srcloc !2
  %6 = extractvalue { i64, i64 } %5, 0
  %7 = extractvalue { i64, i64 } %5, 1
  store i64 %6, i64* %2, align 8
  store i64 %7, i64* %3, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 209, i32 225, i32 252, i32 282, i32 313, i32 341}
