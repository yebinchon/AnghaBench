; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_ppc970-pmu.c_p970_marked_instr_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_ppc970-pmu.c_p970_marked_instr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_PMCSEL_MSK = common dso_local global i32 0, align 4
@direct_marked_event = common dso_local global i32* null, align 8
@PM_BYTE_SH = common dso_local global i32 0, align 4
@PM_BYTE_MSK = common dso_local global i32 0, align 4
@PM_UNIT_SH = common dso_local global i32 0, align 4
@PM_UNIT_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @p970_marked_instr_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p970_marked_instr_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @PM_PMC_SH, align 4
  %12 = ashr i32 %10, %11
  %13 = load i32, i32* @PM_PMC_MSK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @PM_PMCSEL_MSK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %1
  %21 = load i32*, i32** @direct_marked_event, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 1, %27
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %81

32:                                               ; preds = %20
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = icmp sle i32 %36, 4
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 %39, 1
  br label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  %43 = sub nsw i32 8, %42
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i32 [ %40, %38 ], [ %43, %41 ]
  store i32 %45, i32* %8, align 4
  br label %55

46:                                               ; preds = %32
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 7
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 13
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %46
  store i32 4, i32* %8, align 4
  br label %54

53:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %81

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54, %44
  br label %58

56:                                               ; preds = %1
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %56, %55
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @PM_BYTE_SH, align 4
  %61 = ashr i32 %59, %60
  %62 = load i32, i32* @PM_BYTE_MSK, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @PM_UNIT_SH, align 4
  %66 = ashr i32 %64, %65
  %67 = load i32, i32* @PM_UNIT_MSK, align 4
  %68 = and i32 %66, %67
  store i32 %68, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  switch i32 %69, label %73 [
    i32 128, label %70
    i32 130, label %71
    i32 129, label %72
  ]

70:                                               ; preds = %58
  store i32 76, i32* %9, align 4
  br label %73

71:                                               ; preds = %58
  store i32 140377856, i32* %9, align 4
  br label %73

72:                                               ; preds = %58
  store i32 1342177280, i32* %9, align 4
  br label %73

73:                                               ; preds = %58, %72, %71, %70
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %7, align 4
  %76 = mul nsw i32 %75, 8
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %76, %77
  %79 = lshr i32 %74, %78
  %80 = and i32 %79, 1
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %73, %53, %31
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
