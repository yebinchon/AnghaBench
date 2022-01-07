; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power4-pmu.c_p4_get_alternatives.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_power4-pmu.c_p4_get_alternatives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ppc_inst_cmpl = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @p4_get_alternatives to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p4_get_alternatives(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %11, i32* %13, align 4
  store i32 1, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 32771
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 548
  br i1 %18, label %19, label %24

19:                                               ; preds = %16, %3
  %20 = load i32, i32* %5, align 4
  %21 = xor i32 %20, 33319
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %21, i32* %23, align 4
  store i32 2, i32* %4, align 4
  br label %81

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 3091
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 3107
  br i1 %29, label %30, label %35

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %5, align 4
  %32 = xor i32 %31, 48
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %32, i32* %34, align 4
  store i32 2, i32* %4, align 4
  br label %81

35:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %76, %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** @ppc_inst_cmpl, align 8
  %39 = call i32 @ARRAY_SIZE(i32* %38)
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %79

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = load i32*, i32** @ppc_inst_cmpl, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %42, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %71, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32*, i32** @ppc_inst_cmpl, align 8
  %53 = call i32 @ARRAY_SIZE(i32* %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i32*, i32** @ppc_inst_cmpl, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %64, i32* %69, align 4
  br label %70

70:                                               ; preds = %59, %55
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %50

74:                                               ; preds = %50
  br label %79

75:                                               ; preds = %41
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %36

79:                                               ; preds = %74, %36
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %30, %19
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
