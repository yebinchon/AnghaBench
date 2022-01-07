; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power7-pmu.c_power7_marked_instr_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power7-pmu.c_power7_marked_instr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_UNIT_SH = common dso_local global i32 0, align 4
@PM_UNIT_MSK = common dso_local global i32 0, align 4
@PM_PMCSEL_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @power7_marked_instr_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power7_marked_instr_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @PM_PMC_SH, align 4
  %9 = ashr i32 %7, %8
  %10 = load i32, i32* @PM_PMC_MSK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @PM_UNIT_SH, align 4
  %14 = ashr i32 %12, %13
  %15 = load i32, i32* @PM_UNIT_MSK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @PM_PMCSEL_MSK, align 4
  %19 = and i32 %17, %18
  %20 = and i32 %19, -2
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 5
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 4
  switch i32 %26, label %67 [
    i32 2, label %27
    i32 3, label %36
    i32 4, label %51
    i32 5, label %51
    i32 6, label %55
    i32 8, label %63
  ]

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i1 [ true, %27 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %68

36:                                               ; preds = %24
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 60
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 1
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %2, align 4
  br label %68

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 62
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 2
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %2, align 4
  br label %68

50:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %68

51:                                               ; preds = %24, %24
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 13
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %2, align 4
  br label %68

55:                                               ; preds = %24
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 100
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = icmp sge i32 %59, 3
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %2, align 4
  br label %68

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %24, %62
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 13
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %63, %58, %51, %50, %46, %39, %33, %23
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
