; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_pq2.c_pq2_get_clocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_pq2.c_pq2_get_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"pq2_get_clocks: Couldn't get IMMR base.\0D\0A\00", align 1
@PQ2_SCCR = common dso_local global i64 0, align 8
@PQ2_SCMR = common dso_local global i64 0, align 8
@pq2_corecnf_map = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pq2_get_clocks(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = call i32* (...) @fsl_get_immr()
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %5
  %27 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %113

28:                                               ; preds = %5
  %29 = load i32*, i32** %12, align 8
  %30 = load i64, i64* @PQ2_SCCR, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = call i32 @in_be32(i32* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = load i64, i64* @PQ2_SCMR, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = call i32 @in_be32(i32* %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %13, align 4
  %38 = and i32 %37, 3
  store i32 %38, i32* %21, align 4
  %39 = load i32, i32* %14, align 4
  %40 = ashr i32 %39, 24
  %41 = and i32 %40, 31
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %14, align 4
  %43 = ashr i32 %42, 20
  %44 = and i32 %43, 15
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %14, align 4
  %46 = ashr i32 %45, 12
  %47 = and i32 %46, 1
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %14, align 4
  %49 = and i32 %48, 4095
  store i32 %49, i32* %20, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %20, align 4
  %52 = add nsw i32 %51, 1
  %53 = mul nsw i32 %50, %52
  %54 = load i32, i32* %19, align 4
  %55 = add nsw i32 %54, 1
  %56 = sdiv i32 %53, %55
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %18, align 4
  %59 = add nsw i32 %58, 1
  %60 = sdiv i32 %57, %59
  store i32 %60, i32* %16, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %28
  %64 = load i32, i32* %15, align 4
  %65 = sdiv i32 %64, 2
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %28
  %68 = load i32*, i32** %10, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* %16, align 4
  %72 = sdiv i32 %71, 4
  %73 = load i32*, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32*, i32** %11, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %21, align 4
  %80 = add nsw i32 %79, 1
  %81 = mul nsw i32 %80, 2
  %82 = shl i32 1, %81
  %83 = sdiv i32 %78, %82
  %84 = load i32*, i32** %11, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %77, %74
  %86 = load i32*, i32** %9, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %112

88:                                               ; preds = %85
  %89 = load i32*, i32** @pq2_corecnf_map, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %22, align 4
  %94 = load i32, i32* %22, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load i32, i32* %15, align 4
  %98 = sdiv i32 %97, 2
  %99 = load i32*, i32** %9, align 8
  store i32 %98, i32* %99, align 4
  br label %111

100:                                              ; preds = %88
  %101 = load i32, i32* %22, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 0, i32* %6, align 4
  br label %113

104:                                              ; preds = %100
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %22, align 4
  %107 = mul nsw i32 %105, %106
  %108 = sdiv i32 %107, 2
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %96
  br label %112

112:                                              ; preds = %111, %85
  store i32 1, i32* %6, align 4
  br label %113

113:                                              ; preds = %112, %103, %26
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32* @fsl_get_immr(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @in_be32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
