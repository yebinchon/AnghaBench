; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_perf_event.c_sparc_check_constraints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_perf_event.c_sparc_check_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@perf_max_events = common dso_local global i32 0, align 4
@PIC_UPPER = common dso_local global i32 0, align 4
@PIC_LOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32)* @sparc_check_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_check_constraints(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @perf_max_events, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %89

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %90

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 2
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i64*, i64** %4, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @perf_event_decode(i64 %23, i32* %8, i32* %6)
  %25 = load i64*, i64** %4, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @perf_event_decode(i64 %27, i32* %8, i32* %7)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PIC_UPPER, align 4
  %31 = load i32, i32* @PIC_LOWER, align 4
  %32 = or i32 %30, %31
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %16
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @PIC_UPPER, align 4
  %37 = load i32, i32* @PIC_LOWER, align 4
  %38 = or i32 %36, %37
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %90

41:                                               ; preds = %34, %16
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @PIC_UPPER, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @PIC_LOWER, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45, %41
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @PIC_UPPER, align 4
  %52 = load i32, i32* @PIC_LOWER, align 4
  %53 = or i32 %51, %52
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %90

56:                                               ; preds = %49, %45
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @PIC_UPPER, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @PIC_LOWER, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @PIC_UPPER, align 4
  %67 = load i32, i32* @PIC_LOWER, align 4
  %68 = or i32 %66, %67
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %90

71:                                               ; preds = %64, %60
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @PIC_UPPER, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @PIC_LOWER, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %87, label %79

79:                                               ; preds = %75, %71
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @PIC_LOWER, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @PIC_UPPER, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %75
  store i32 0, i32* %3, align 4
  br label %90

88:                                               ; preds = %83, %79
  br label %89

89:                                               ; preds = %88, %2
  store i32 -1, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %87, %70, %55, %40, %15
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @perf_event_decode(i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
