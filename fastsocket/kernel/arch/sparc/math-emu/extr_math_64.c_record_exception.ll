; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/math-emu/extr_math_64.c_record_exception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/math-emu/extr_math_64.c_record_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32 }
%struct.TYPE_2__ = type { i64* }

@FSR_TEM_SHIFT = common dso_local global i64 0, align 8
@FSR_TEM_MASK = common dso_local global i64 0, align 8
@FP_EX_INVALID = common dso_local global i32 0, align 4
@FP_EX_OVERFLOW = common dso_local global i32 0, align 4
@FP_EX_UNDERFLOW = common dso_local global i32 0, align 4
@FP_EX_DIVZERO = common dso_local global i32 0, align 4
@FP_EX_INEXACT = common dso_local global i32 0, align 4
@FSR_CEXC_MASK = common dso_local global i64 0, align 8
@FSR_CEXC_SHIFT = common dso_local global i64 0, align 8
@FSR_AEXC_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32)* @record_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_exception(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.TYPE_2__* (...) @current_thread_info()
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* @FSR_TEM_SHIFT, align 8
  %16 = shl i64 %14, %15
  %17 = and i64 %12, %16
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %78

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @FSR_TEM_MASK, align 8
  %25 = and i64 %23, %24
  %26 = load i64, i64* @FSR_TEM_SHIFT, align 8
  %27 = ashr i64 %25, %26
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = and i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %33, 1
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %77

37:                                               ; preds = %22
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @FP_EX_INVALID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @FP_EX_INVALID, align 4
  store i32 %43, i32* %4, align 4
  br label %76

44:                                               ; preds = %37
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @FP_EX_OVERFLOW, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @FP_EX_OVERFLOW, align 4
  store i32 %50, i32* %4, align 4
  br label %75

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @FP_EX_UNDERFLOW, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @FP_EX_UNDERFLOW, align 4
  store i32 %57, i32* %4, align 4
  br label %74

58:                                               ; preds = %51
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @FP_EX_DIVZERO, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @FP_EX_DIVZERO, align 4
  store i32 %64, i32* %4, align 4
  br label %73

65:                                               ; preds = %58
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @FP_EX_INEXACT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @FP_EX_INEXACT, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %65
  br label %73

73:                                               ; preds = %72, %63
  br label %74

74:                                               ; preds = %73, %56
  br label %75

75:                                               ; preds = %74, %49
  br label %76

76:                                               ; preds = %75, %42
  br label %77

77:                                               ; preds = %76, %22
  br label %78

78:                                               ; preds = %77, %2
  %79 = load i64, i64* @FSR_CEXC_MASK, align 8
  %80 = xor i64 %79, -1
  %81 = load i64, i64* %5, align 8
  %82 = and i64 %81, %80
  store i64 %82, i64* %5, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* @FSR_CEXC_SHIFT, align 8
  %86 = shl i64 %84, %85
  %87 = load i64, i64* %5, align 8
  %88 = or i64 %87, %86
  store i64 %88, i64* %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %78
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* @FSR_AEXC_SHIFT, align 8
  %95 = shl i64 %93, %94
  %96 = load i64, i64* %5, align 8
  %97 = or i64 %96, %95
  store i64 %97, i64* %5, align 8
  br label %98

98:                                               ; preds = %91, %78
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i64, i64* %5, align 8
  %103 = or i64 %102, 16384
  store i64 %103, i64* %5, align 8
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i64, i64* %5, align 8
  %106 = call %struct.TYPE_2__* (...) @current_thread_info()
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 0
  store i64 %105, i64* %109, align 8
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %104
  %113 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %114 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %117 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %119 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 4
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %112, %104
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 0, i32 1
  ret i32 %126
}

declare dso_local %struct.TYPE_2__* @current_thread_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
