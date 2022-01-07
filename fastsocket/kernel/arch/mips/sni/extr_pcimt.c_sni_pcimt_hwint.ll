; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sni/extr_pcimt.c_sni_pcimt_hwint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sni/extr_pcimt.c_sni_pcimt_hwint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C_IRQ5 = common dso_local global i32 0, align 4
@MIPS_CPU_IRQ_BASE = common dso_local global i64 0, align 8
@C_IRQ4 = common dso_local global i32 0, align 4
@C_IRQ3 = common dso_local global i32 0, align 4
@C_IRQ1 = common dso_local global i32 0, align 4
@C_IRQ0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sni_pcimt_hwint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sni_pcimt_hwint() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @read_c0_cause()
  %3 = call i32 (...) @read_c0_status()
  %4 = and i32 %2, %3
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @C_IRQ5, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i64, i64* @MIPS_CPU_IRQ_BASE, align 8
  %11 = add nsw i64 %10, 7
  %12 = call i32 @do_IRQ(i64 %11)
  br label %47

13:                                               ; preds = %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @C_IRQ4, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i64, i64* @MIPS_CPU_IRQ_BASE, align 8
  %20 = add nsw i64 %19, 6
  %21 = call i32 @do_IRQ(i64 %20)
  br label %46

22:                                               ; preds = %13
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @C_IRQ3, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 (...) @pcimt_hwint3()
  br label %45

29:                                               ; preds = %22
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @C_IRQ1, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (...) @pcimt_hwint1()
  br label %44

36:                                               ; preds = %29
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* @C_IRQ0, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 (...) @pcimt_hwint0()
  br label %43

43:                                               ; preds = %41, %36
  br label %44

44:                                               ; preds = %43, %34
  br label %45

45:                                               ; preds = %44, %27
  br label %46

46:                                               ; preds = %45, %18
  br label %47

47:                                               ; preds = %46, %9
  ret void
}

declare dso_local i32 @read_c0_cause(...) #1

declare dso_local i32 @read_c0_status(...) #1

declare dso_local i32 @do_IRQ(i64) #1

declare dso_local i32 @pcimt_hwint3(...) #1

declare dso_local i32 @pcimt_hwint1(...) #1

declare dso_local i32 @pcimt_hwint0(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
