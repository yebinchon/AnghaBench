; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_mpc7450-pmu.c_mpc7450_threshold_use.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_mpc7450-pmu.c_mpc7450_threshold_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_PMCSEL_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mpc7450_threshold_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc7450_threshold_use(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @PM_PMC_SH, align 4
  %8 = ashr i32 %6, %7
  %9 = load i32, i32* @PM_PMC_MSK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @PM_PMCSEL_MSK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %52 [
    i32 1, label %15
    i32 2, label %30
    i32 3, label %35
    i32 4, label %47
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 30
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 31
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15
  store i32 1, i32* %2, align 4
  br label %53

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 40
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 43
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22
  store i32 2, i32* %2, align 4
  br label %53

29:                                               ; preds = %25
  br label %52

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 32
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %53

34:                                               ; preds = %30
  br label %52

35:                                               ; preds = %1
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 12
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 13
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %35
  store i32 1, i32* %2, align 4
  br label %53

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 17
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 2, i32* %2, align 4
  br label %53

46:                                               ; preds = %42
  br label %52

47:                                               ; preds = %1
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 16
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %53

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %1, %51, %46, %34, %29
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %50, %45, %41, %33, %28, %21
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
