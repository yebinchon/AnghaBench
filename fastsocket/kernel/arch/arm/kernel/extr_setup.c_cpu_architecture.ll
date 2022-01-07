; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_setup.c_cpu_architecture.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_setup.c_cpu_architecture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_ARCH_UNKNOWN = common dso_local global i32 0, align 4
@CPU_ARCH_ARMv4T = common dso_local global i32 0, align 4
@CPU_ARCH_ARMv3 = common dso_local global i32 0, align 4
@CPU_ARCH_ARMv7 = common dso_local global i32 0, align 4
@CPU_ARCH_ARMv6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_architecture() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @read_cpuid_id()
  %4 = and i32 %3, 585728
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @CPU_ARCH_UNKNOWN, align 4
  store i32 %7, i32* %1, align 4
  br label %71

8:                                                ; preds = %0
  %9 = call i32 (...) @read_cpuid_id()
  %10 = and i32 %9, 585728
  %11 = icmp eq i32 %10, 28672
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = call i32 (...) @read_cpuid_id()
  %14 = and i32 %13, 8388608
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @CPU_ARCH_ARMv4T, align 4
  br label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @CPU_ARCH_ARMv3, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %1, align 4
  br label %70

22:                                               ; preds = %8
  %23 = call i32 (...) @read_cpuid_id()
  %24 = and i32 %23, 524288
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = call i32 (...) @read_cpuid_id()
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 7
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* @CPU_ARCH_ARMv3, align 4
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %32, %26
  br label %69

37:                                               ; preds = %22
  %38 = call i32 (...) @read_cpuid_id()
  %39 = and i32 %38, 983040
  %40 = icmp eq i32 %39, 983040
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  %42 = call i32 asm "mrc\09p15, 0, $0, c0, c1, 4", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = and i32 %43, 15
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %2, align 4
  %48 = and i32 %47, 240
  %49 = icmp eq i32 %48, 48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %41
  %51 = load i32, i32* @CPU_ARCH_ARMv7, align 4
  store i32 %51, i32* %1, align 4
  br label %65

52:                                               ; preds = %46
  %53 = load i32, i32* %2, align 4
  %54 = and i32 %53, 15
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %2, align 4
  %58 = and i32 %57, 240
  %59 = icmp eq i32 %58, 32
  br i1 %59, label %60, label %62

60:                                               ; preds = %56, %52
  %61 = load i32, i32* @CPU_ARCH_ARMv6, align 4
  store i32 %61, i32* %1, align 4
  br label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @CPU_ARCH_UNKNOWN, align 4
  store i32 %63, i32* %1, align 4
  br label %64

64:                                               ; preds = %62, %60
  br label %65

65:                                               ; preds = %64, %50
  br label %68

66:                                               ; preds = %37
  %67 = load i32, i32* @CPU_ARCH_UNKNOWN, align 4
  store i32 %67, i32* %1, align 4
  br label %68

68:                                               ; preds = %66, %65
  br label %69

69:                                               ; preds = %68, %36
  br label %70

70:                                               ; preds = %69, %20
  br label %71

71:                                               ; preds = %70, %6
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

declare dso_local i32 @read_cpuid_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 770}
