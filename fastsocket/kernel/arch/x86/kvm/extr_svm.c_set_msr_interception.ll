; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_set_msr_interception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_set_msr_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_MSR_MAPS = common dso_local global i32 0, align 4
@msrpm_ranges = common dso_local global i32* null, align 8
@MSRS_IN_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @set_msr_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_msr_interception(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %77, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @NUM_MSR_MAPS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %80

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** @msrpm_ranges, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp uge i32 %19, %24
  br i1 %25, label %26, label %76

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** @msrpm_ranges, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MSRS_IN_RANGE, align 4
  %34 = add i32 %32, %33
  %35 = icmp ult i32 %27, %34
  br i1 %35, label %36, label %76

36:                                               ; preds = %26
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @MSRS_IN_RANGE, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %39, %40
  %42 = load i32*, i32** @msrpm_ranges, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sub i32 %41, %46
  %48 = mul i32 %47, 2
  store i32 %48, i32* %10, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sdiv i32 %50, 32
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32* %53, i32** %11, align 8
  %54 = load i32, i32* %10, align 4
  %55 = srem i32 %54, 32
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 0, i32 2
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 0, i32 1
  %64 = or i32 %59, %63
  store i32 %64, i32* %13, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %12, align 4
  %68 = shl i32 3, %67
  %69 = xor i32 %68, -1
  %70 = and i32 %66, %69
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %12, align 4
  %73 = shl i32 %71, %72
  %74 = or i32 %70, %73
  %75 = load i32*, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  br label %82

76:                                               ; preds = %26, %18
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %14

80:                                               ; preds = %14
  %81 = call i32 (...) @BUG()
  br label %82

82:                                               ; preds = %80, %36
  ret void
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
