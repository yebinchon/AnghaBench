; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mtrr/extr_cyrix.c_cyrix_get_arr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mtrr/extr_cyrix.c_cyrix_get_arr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CX86_ARR_BASE = common dso_local global i32 0, align 4
@CX86_CCR3 = common dso_local global i32 0, align 4
@CX86_RCR_BASE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MTRR_TYPE_UNCACHABLE = common dso_local global i32 0, align 4
@MTRR_TYPE_WRBACK = common dso_local global i32 0, align 4
@MTRR_TYPE_WRCOMB = common dso_local global i32 0, align 4
@MTRR_TYPE_WRTHROUGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*, i64*, i32*)* @cyrix_get_arr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyrix_get_arr(i32 %0, i64* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32, i32* @CX86_ARR_BASE, align 4
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 %15, 1
  %17 = add i32 %14, %16
  %18 = load i32, i32* %5, align 4
  %19 = add i32 %17, %18
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %9, align 1
  %21 = load i64, i64* %13, align 8
  %22 = call i32 @local_irq_save(i64 %21)
  %23 = load i32, i32* @CX86_CCR3, align 4
  %24 = call zeroext i8 @getCx86(i32 %23)
  store i8 %24, i8* %10, align 1
  %25 = load i32, i32* @CX86_CCR3, align 4
  %26 = load i8, i8* %10, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 15
  %29 = or i32 %28, 16
  %30 = trunc i32 %29 to i8
  %31 = call i32 @setCx86(i32 %25, i8 zeroext %30)
  %32 = load i8, i8* %9, align 1
  %33 = zext i8 %32 to i32
  %34 = call zeroext i8 @getCx86(i32 %33)
  %35 = load i64*, i64** %6, align 8
  %36 = bitcast i64* %35 to i8*
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  store i8 %34, i8* %37, align 1
  %38 = load i8, i8* %9, align 1
  %39 = zext i8 %38 to i32
  %40 = add nsw i32 %39, 1
  %41 = call zeroext i8 @getCx86(i32 %40)
  %42 = load i64*, i64** %6, align 8
  %43 = bitcast i64* %42 to i8*
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  store i8 %41, i8* %44, align 1
  %45 = load i8, i8* %9, align 1
  %46 = zext i8 %45 to i32
  %47 = add nsw i32 %46, 2
  %48 = call zeroext i8 @getCx86(i32 %47)
  %49 = load i64*, i64** %6, align 8
  %50 = bitcast i64* %49 to i8*
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8 %48, i8* %51, align 1
  %52 = load i32, i32* @CX86_RCR_BASE, align 4
  %53 = load i32, i32* %5, align 4
  %54 = add i32 %52, %53
  %55 = call zeroext i8 @getCx86(i32 %54)
  store i8 %55, i8* %11, align 1
  %56 = load i32, i32* @CX86_CCR3, align 4
  %57 = load i8, i8* %10, align 1
  %58 = call i32 @setCx86(i32 %56, i8 zeroext %57)
  %59 = load i64, i64* %13, align 8
  %60 = call i32 @local_irq_restore(i64 %59)
  %61 = load i64*, i64** %6, align 8
  %62 = bitcast i64* %61 to i8*
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 15
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %12, align 1
  %68 = load i64, i64* @PAGE_SHIFT, align 8
  %69 = load i64*, i64** %6, align 8
  %70 = load i64, i64* %69, align 8
  %71 = lshr i64 %70, %68
  store i64 %71, i64* %69, align 8
  %72 = load i8, i8* %12, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ult i32 %75, 7
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i64 1, i64 64
  %79 = load i8, i8* %12, align 1
  %80 = zext i8 %79 to i32
  %81 = sub nsw i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = shl i64 %78, %82
  %84 = load i64*, i64** %7, align 8
  store i64 %83, i64* %84, align 8
  br label %87

85:                                               ; preds = %4
  %86 = load i64*, i64** %7, align 8
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %85, %74
  %88 = load i32, i32* %5, align 4
  %89 = icmp ult i32 %88, 7
  br i1 %89, label %90, label %107

90:                                               ; preds = %87
  %91 = load i8, i8* %11, align 1
  %92 = zext i8 %91 to i32
  switch i32 %92, label %103 [
    i32 1, label %93
    i32 8, label %96
    i32 9, label %99
    i32 24, label %102
  ]

93:                                               ; preds = %90
  %94 = load i32, i32* @MTRR_TYPE_UNCACHABLE, align 4
  %95 = load i32*, i32** %8, align 8
  store i32 %94, i32* %95, align 4
  br label %106

96:                                               ; preds = %90
  %97 = load i32, i32* @MTRR_TYPE_WRBACK, align 4
  %98 = load i32*, i32** %8, align 8
  store i32 %97, i32* %98, align 4
  br label %106

99:                                               ; preds = %90
  %100 = load i32, i32* @MTRR_TYPE_WRCOMB, align 4
  %101 = load i32*, i32** %8, align 8
  store i32 %100, i32* %101, align 4
  br label %106

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %90, %102
  %104 = load i32, i32* @MTRR_TYPE_WRTHROUGH, align 4
  %105 = load i32*, i32** %8, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %99, %96, %93
  br label %124

107:                                              ; preds = %87
  %108 = load i8, i8* %11, align 1
  %109 = zext i8 %108 to i32
  switch i32 %109, label %120 [
    i32 0, label %110
    i32 8, label %113
    i32 9, label %116
    i32 25, label %119
  ]

110:                                              ; preds = %107
  %111 = load i32, i32* @MTRR_TYPE_UNCACHABLE, align 4
  %112 = load i32*, i32** %8, align 8
  store i32 %111, i32* %112, align 4
  br label %123

113:                                              ; preds = %107
  %114 = load i32, i32* @MTRR_TYPE_WRCOMB, align 4
  %115 = load i32*, i32** %8, align 8
  store i32 %114, i32* %115, align 4
  br label %123

116:                                              ; preds = %107
  %117 = load i32, i32* @MTRR_TYPE_WRBACK, align 4
  %118 = load i32*, i32** %8, align 8
  store i32 %117, i32* %118, align 4
  br label %123

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %107, %119
  %121 = load i32, i32* @MTRR_TYPE_WRTHROUGH, align 4
  %122 = load i32*, i32** %8, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %116, %113, %110
  br label %124

124:                                              ; preds = %123, %106
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local zeroext i8 @getCx86(i32) #1

declare dso_local i32 @setCx86(i32, i8 zeroext) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
