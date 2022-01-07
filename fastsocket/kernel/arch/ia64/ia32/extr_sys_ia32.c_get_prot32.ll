; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_sys_ia32.c_get_prot32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_sys_ia32.c_get_prot32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROT_WRITE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_prot32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_prot32(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @PROT_WRITE, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load i32, i32* @PROT_READ, align 4
  %9 = load i32, i32* @PROT_WRITE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @PROT_EXEC, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %2, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %2, align 4
  br label %29

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @PROT_READ, align 4
  %18 = load i32, i32* @PROT_EXEC, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load i32, i32* @PROT_READ, align 4
  %24 = load i32, i32* @PROT_EXEC, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %2, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %22, %15
  br label %29

29:                                               ; preds = %28, %7
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
