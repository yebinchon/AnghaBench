; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/lib/extr_delay.c___delay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/lib/extr_delay.c___delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__delay(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i64 asm sideeffect "beqz\09$0, 2f\09\09\09\0A\09 .fillinsn\09\09\09\0A\091:\09\09\09\09\0A\09addi\09$0, #-1\09\09\09\0A\09blez\09$0, 2f\09\09\09\0A\09addi\09$0, #-1\09\09\09\0A\09blez\09$0, 2f\09\09\09\0A\09addi\09$0, #-1\09\09\09\0A\09blez\09$0, 2f\09\09\09\0A\09addi\09$0, #-1\09\09\09\0A\09bgtz\09$0, 1b\09\09\09\0A\09 .fillinsn\09\09\09\0A\092:\09\09\09\09\0A\09", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 0, i64 %3) #1, !srcloc !2
  store i64 %4, i64* %2, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 195, i32 212, i32 234, i32 249, i32 273, i32 296, i32 320, i32 343, i32 367, i32 390, i32 414, i32 437, i32 459, i32 474}
