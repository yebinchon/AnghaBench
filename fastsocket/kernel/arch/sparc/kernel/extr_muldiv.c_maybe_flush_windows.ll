; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_muldiv.c_maybe_flush_windows.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_muldiv.c_maybe_flush_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @maybe_flush_windows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_flush_windows(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp uge i32 %7, 16
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = icmp uge i32 %10, 16
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = icmp uge i32 %13, 16
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %9, %3
  call void asm sideeffect "save %sp, -0x40, %sp\0A\09save %sp, -0x40, %sp\0A\09save %sp, -0x40, %sp\0A\09save %sp, -0x40, %sp\0A\09save %sp, -0x40, %sp\0A\09save %sp, -0x40, %sp\0A\09save %sp, -0x40, %sp\0A\09restore; restore; restore; restore;\0A\09restore; restore; restore;\0A\09", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  br label %16

16:                                               ; preds = %15, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 326, i32 349, i32 385, i32 421, i32 457, i32 493, i32 529, i32 565, i32 616, i32 658}
