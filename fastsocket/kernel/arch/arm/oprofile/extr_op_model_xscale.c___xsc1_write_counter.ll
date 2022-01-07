; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/oprofile/extr_op_model_xscale.c___xsc1_write_counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/oprofile/extr_op_model_xscale.c___xsc1_write_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @__xsc1_write_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xsc1_write_counter(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %12 [
    i32 130, label %6
    i32 129, label %8
    i32 128, label %10
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* %4, align 4
  call void asm sideeffect "mcr p14, 0, $0, c1, c0, 0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %7) #1, !srcloc !2
  br label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  call void asm sideeffect "mcr p14, 0, $0, c2, c0, 0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %9) #1, !srcloc !3
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  call void asm sideeffect "mcr p14, 0, $0, c3, c0, 0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %11) #1, !srcloc !4
  br label %12

12:                                               ; preds = %2, %10, %8, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 297}
!3 = !{i32 385}
!4 = !{i32 473}
