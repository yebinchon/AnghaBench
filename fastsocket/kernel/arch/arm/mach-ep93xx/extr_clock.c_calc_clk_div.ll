; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_clock.c_calc_clk_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ep93xx/extr_clock.c_calc_clk_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, %struct.clk* }

@clk_pll1 = common dso_local global %struct.clk zeroinitializer, align 8
@clk_pll2 = common dso_local global %struct.clk zeroinitializer, align 8
@clk_xtali = common dso_local global %struct.clk zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i64, i32*, i32*, i32*, i32*)* @calc_clk_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_clk_div(%struct.clk* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.clk*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.clk*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 -1, i64* %18, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.clk, %struct.clk* @clk_pll1, i32 0, i32 0), align 8
  %24 = sdiv i32 %23, 4
  %25 = load i32, i32* getelementptr inbounds (%struct.clk, %struct.clk* @clk_pll2, i32 0, i32 0), align 8
  %26 = sdiv i32 %25, 4
  %27 = call i32 @max(i32 %24, i32 %26)
  %28 = load i32, i32* getelementptr inbounds (%struct.clk, %struct.clk* @clk_xtali, i32 0, i32 0), align 8
  %29 = sdiv i32 %28, 4
  %30 = call i32 @max(i32 %27, i32 %29)
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %15, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %15, align 8
  %34 = call i64 @min(i64 %32, i64 %33)
  store i64 %34, i64* %9, align 8
  store i32 0, i32* %19, align 4
  br label %35

35:                                               ; preds = %117, %6
  %36 = load i32, i32* %19, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %120

38:                                               ; preds = %35
  %39 = load i32, i32* %19, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store %struct.clk* @clk_xtali, %struct.clk** %14, align 8
  br label %48

42:                                               ; preds = %38
  %43 = load i32, i32* %19, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store %struct.clk* @clk_pll1, %struct.clk** %14, align 8
  br label %47

46:                                               ; preds = %42
  store %struct.clk* @clk_pll2, %struct.clk** %14, align 8
  br label %47

47:                                               ; preds = %46, %45
  br label %48

48:                                               ; preds = %47, %41
  %49 = load %struct.clk*, %struct.clk** %14, align 8
  %50 = getelementptr inbounds %struct.clk, %struct.clk* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %17, align 8
  store i32 4, i32* %22, align 4
  br label %54

54:                                               ; preds = %113, %48
  %55 = load i32, i32* %22, align 4
  %56 = icmp sle i32 %55, 6
  br i1 %56, label %57, label %116

57:                                               ; preds = %54
  %58 = load i64, i64* %17, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i32, i32* %22, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %59, %61
  %63 = udiv i64 %58, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %21, align 4
  %65 = load i32, i32* %21, align 4
  %66 = icmp slt i32 %65, 2
  br i1 %66, label %70, label %67

67:                                               ; preds = %57
  %68 = load i32, i32* %21, align 4
  %69 = icmp sgt i32 %68, 127
  br i1 %69, label %70, label %71

70:                                               ; preds = %67, %57
  br label %113

71:                                               ; preds = %67
  %72 = load i64, i64* %17, align 8
  %73 = load i32, i32* %22, align 4
  %74 = load i32, i32* %21, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = udiv i64 %72, %76
  store i64 %77, i64* %16, align 8
  %78 = load i32, i32* %20, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %71
  %81 = load i64, i64* %16, align 8
  %82 = load i64, i64* %9, align 8
  %83 = sub i64 %81, %82
  %84 = call i64 @abs(i64 %83)
  %85 = load i64, i64* %18, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %112

87:                                               ; preds = %80, %71
  %88 = load i32, i32* %22, align 4
  %89 = sub nsw i32 %88, 3
  %90 = load i32*, i32** %12, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %21, align 4
  %92 = load i32*, i32** %13, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %19, align 4
  %94 = icmp eq i32 %93, 2
  %95 = zext i1 %94 to i32
  %96 = load i32*, i32** %10, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* %19, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = load i32*, i32** %11, align 8
  store i32 %99, i32* %100, align 4
  %101 = load %struct.clk*, %struct.clk** %14, align 8
  %102 = load %struct.clk*, %struct.clk** %8, align 8
  %103 = getelementptr inbounds %struct.clk, %struct.clk* %102, i32 0, i32 1
  store %struct.clk* %101, %struct.clk** %103, align 8
  %104 = load i64, i64* %16, align 8
  %105 = trunc i64 %104 to i32
  %106 = load %struct.clk*, %struct.clk** %8, align 8
  %107 = getelementptr inbounds %struct.clk, %struct.clk* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i64, i64* %16, align 8
  %109 = load i64, i64* %9, align 8
  %110 = sub i64 %108, %109
  %111 = call i64 @abs(i64 %110)
  store i64 %111, i64* %18, align 8
  store i32 1, i32* %20, align 4
  br label %112

112:                                              ; preds = %87, %80
  br label %113

113:                                              ; preds = %112, %70
  %114 = load i32, i32* %22, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %22, align 4
  br label %54

116:                                              ; preds = %54
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %19, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %19, align 4
  br label %35

120:                                              ; preds = %35
  %121 = load i32, i32* %20, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %7, align 4
  br label %127

126:                                              ; preds = %120
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %126, %123
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
