; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mach-at32ap/extr_at32ap700x.c_pll_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mach-at32ap/extr_at32ap700x.c_pll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 (%struct.TYPE_3__*)* }
%struct.clk = type { %struct.TYPE_3__* }

@EINVAL = common dso_local global i64 0, align 8
@PLLOPT = common dso_local global i32 0, align 4
@PLLMUL = common dso_local global i32 0, align 4
@PLLDIV = common dso_local global i32 0, align 4
@PLLCOUNT = common dso_local global i32 0, align 4
@osc1 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@PLLOSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*, i64, i32*)* @pll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pll_set_rate(%struct.clk* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %16, align 8
  store i64 -1, i64* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %20, 80000000
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = icmp ugt i64 %23, 200000000
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %3
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub nsw i64 0, %26
  store i64 %27, i64* %4, align 8
  br label %133

28:                                               ; preds = %22
  %29 = load i32, i32* @PLLOPT, align 4
  %30 = call i32 @PM_BF(i32 %29, i32 4)
  store i32 %30, i32* %19, align 4
  %31 = load %struct.clk*, %struct.clk** %5, align 8
  %32 = getelementptr inbounds %struct.clk, %struct.clk* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64 (%struct.TYPE_3__*)*, i64 (%struct.TYPE_3__*)** %34, align 8
  %36 = load %struct.clk*, %struct.clk** %5, align 8
  %37 = getelementptr inbounds %struct.clk, %struct.clk* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = call i64 %35(%struct.TYPE_3__* %38)
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %14, align 8
  %41 = call i64 @DIV_ROUND_UP(i64 %40, i64 32000000)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %14, align 8
  %43 = udiv i64 %42, 6000000
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %28
  %48 = load i64, i64* @EINVAL, align 8
  %49 = sub nsw i64 0, %48
  store i64 %49, i64* %4, align 8
  br label %133

50:                                               ; preds = %28
  %51 = load i64, i64* %11, align 8
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %92, %50
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp ule i64 %53, %54
  br i1 %55, label %56, label %95

56:                                               ; preds = %52
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %10, align 8
  %59 = udiv i64 %58, 2
  %60 = add i64 %57, %59
  %61 = load i64, i64* %10, align 8
  %62 = udiv i64 %60, %61
  store i64 %62, i64* %15, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %15, align 8
  %65 = udiv i64 %64, 2
  %66 = add i64 %63, %65
  %67 = load i64, i64* %15, align 8
  %68 = udiv i64 %66, %67
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %56
  br label %92

72:                                               ; preds = %56
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* %8, align 8
  %75 = mul i64 %73, %74
  store i64 %75, i64* %16, align 8
  %76 = load i64, i64* %16, align 8
  %77 = load i64, i64* %6, align 8
  %78 = sub i64 %76, %77
  %79 = call i64 @abs(i64 %78)
  store i64 %79, i64* %17, align 8
  %80 = load i64, i64* %17, align 8
  %81 = load i64, i64* %18, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %72
  %84 = load i64, i64* %8, align 8
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %10, align 8
  store i64 %85, i64* %13, align 8
  %86 = load i64, i64* %17, align 8
  store i64 %86, i64* %18, align 8
  br label %87

87:                                               ; preds = %83, %72
  %88 = load i64, i64* %17, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %95

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %91, %71
  %93 = load i64, i64* %10, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %10, align 8
  br label %52

95:                                               ; preds = %90, %52
  %96 = load i64, i64* %13, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i64, i64* @EINVAL, align 8
  %100 = sub nsw i64 0, %99
  store i64 %100, i64* %4, align 8
  br label %133

101:                                              ; preds = %95
  %102 = load i32, i32* @PLLMUL, align 4
  %103 = load i64, i64* %9, align 8
  %104 = sub i64 %103, 1
  %105 = trunc i64 %104 to i32
  %106 = call i32 @PM_BF(i32 %102, i32 %105)
  %107 = load i32, i32* %19, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %19, align 4
  %109 = load i32, i32* @PLLDIV, align 4
  %110 = load i64, i64* %13, align 8
  %111 = sub i64 %110, 1
  %112 = trunc i64 %111 to i32
  %113 = call i32 @PM_BF(i32 %109, i32 %112)
  %114 = load i32, i32* %19, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %19, align 4
  %116 = load i32, i32* @PLLCOUNT, align 4
  %117 = call i32 @PM_BF(i32 %116, i32 16)
  %118 = load i32, i32* %19, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %19, align 4
  %120 = load %struct.clk*, %struct.clk** %5, align 8
  %121 = getelementptr inbounds %struct.clk, %struct.clk* %120, i32 0, i32 0
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = icmp eq %struct.TYPE_3__* %122, @osc1
  br i1 %123, label %124, label %129

124:                                              ; preds = %101
  %125 = load i32, i32* @PLLOSC, align 4
  %126 = call i32 @PM_BIT(i32 %125)
  %127 = load i32, i32* %19, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %19, align 4
  br label %129

129:                                              ; preds = %124, %101
  %130 = load i32, i32* %19, align 4
  %131 = load i32*, i32** %7, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i64, i64* %16, align 8
  store i64 %132, i64* %4, align 8
  br label %133

133:                                              ; preds = %129, %98, %47, %25
  %134 = load i64, i64* %4, align 8
  ret i64 %134
}

declare dso_local i32 @PM_BF(i32, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @PM_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
