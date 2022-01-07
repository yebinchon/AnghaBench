; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fpudispatch.c_emfpudispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/math-emu/extr_fpudispatch.c_emfpudispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FPU_TYPE_FLAG_POS = common dso_local global i64 0, align 8
@PA2_0_FPU_FLAG = common dso_local global i32 0, align 4
@PA83_UNIMP_EXCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emfpudispatch(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = call i32 @VASSERT(i32 1)
  %15 = load i32*, i32** %9, align 8
  %16 = load i64, i64* @FPU_TYPE_FLAG_POS, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @get_major(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @get_class(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %37

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @PA2_0_FPU_FLAG, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @get_subop1_PA2_0(i32 %31)
  store i32 %32, i32* %11, align 4
  br label %36

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @get_subop1_PA1_1(i32 %34)
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %33, %30
  br label %40

37:                                               ; preds = %4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @get_subop(i32 %38)
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %37, %36
  %41 = load i32, i32* %12, align 4
  switch i32 %41, label %66 [
    i32 12, label %42
    i32 14, label %48
    i32 6, label %54
    i32 38, label %58
    i32 46, label %62
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @decode_0c(i32 %43, i32 %44, i32 %45, i32* %46)
  store i32 %47, i32* %5, align 4
  br label %68

48:                                               ; preds = %40
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @decode_0e(i32 %49, i32 %50, i32 %51, i32* %52)
  store i32 %53, i32* %5, align 4
  br label %68

54:                                               ; preds = %40
  %55 = load i32, i32* %6, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @decode_06(i32 %55, i32* %56)
  store i32 %57, i32* %5, align 4
  br label %68

58:                                               ; preds = %40
  %59 = load i32, i32* %6, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @decode_26(i32 %59, i32* %60)
  store i32 %61, i32* %5, align 4
  br label %68

62:                                               ; preds = %40
  %63 = load i32, i32* %6, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @decode_2e(i32 %63, i32* %64)
  store i32 %65, i32* %5, align 4
  br label %68

66:                                               ; preds = %40
  %67 = load i32, i32* @PA83_UNIMP_EXCP, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %62, %58, %54, %48, %42
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @VASSERT(i32) #1

declare dso_local i32 @get_major(i32) #1

declare dso_local i32 @get_class(i32) #1

declare dso_local i32 @get_subop1_PA2_0(i32) #1

declare dso_local i32 @get_subop1_PA1_1(i32) #1

declare dso_local i32 @get_subop(i32) #1

declare dso_local i32 @decode_0c(i32, i32, i32, i32*) #1

declare dso_local i32 @decode_0e(i32, i32, i32, i32*) #1

declare dso_local i32 @decode_06(i32, i32*) #1

declare dso_local i32 @decode_26(i32, i32*) #1

declare dso_local i32 @decode_2e(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
