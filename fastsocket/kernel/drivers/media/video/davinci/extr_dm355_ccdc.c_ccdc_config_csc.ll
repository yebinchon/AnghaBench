; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm355_ccdc.c_ccdc_config_csc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_dm355_ccdc.c_ccdc_config_csc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdc_csc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@CCDC_CSC_ENABLE = common dso_local global i32 0, align 4
@CSCCTL = common dso_local global i64 0, align 8
@CCDC_CSC_COEFF_TABLE_SIZE = common dso_local global i32 0, align 4
@CCDC_CSC_COEF_INTEG_MASK = common dso_local global i32 0, align 4
@CCDC_CSC_COEF_INTEG_SHIFT = common dso_local global i32 0, align 4
@CCDC_CSC_COEF_DECIMAL_MASK = common dso_local global i32 0, align 4
@CCDC_CSC_DEC_MAX = common dso_local global i32 0, align 4
@CCDC_CSCM_MSB_SHIFT = common dso_local global i32 0, align 4
@CSCM0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccdc_csc*)* @ccdc_config_csc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccdc_config_csc(%struct.ccdc_csc* %0) #0 {
  %2 = alloca %struct.ccdc_csc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ccdc_csc* %0, %struct.ccdc_csc** %2, align 8
  %6 = load %struct.ccdc_csc*, %struct.ccdc_csc** %2, align 8
  %7 = getelementptr inbounds %struct.ccdc_csc, %struct.ccdc_csc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %97

11:                                               ; preds = %1
  %12 = load i32, i32* @CCDC_CSC_ENABLE, align 4
  %13 = load i64, i64* @CSCCTL, align 8
  %14 = call i32 @regw(i32 %12, i64 %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %94, %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CCDC_CSC_COEFF_TABLE_SIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %97

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = srem i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %19
  %24 = load %struct.ccdc_csc*, %struct.ccdc_csc** %2, align 8
  %25 = getelementptr inbounds %struct.ccdc_csc, %struct.ccdc_csc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CCDC_CSC_COEF_INTEG_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @CCDC_CSC_COEF_INTEG_SHIFT, align 4
  %35 = shl i32 %33, %34
  store i32 %35, i32* %3, align 4
  %36 = load %struct.ccdc_csc*, %struct.ccdc_csc** %2, align 8
  %37 = getelementptr inbounds %struct.ccdc_csc, %struct.ccdc_csc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CCDC_CSC_COEF_DECIMAL_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @CCDC_CSC_DEC_MAX, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sdiv i32 %47, 100
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %93

51:                                               ; preds = %19
  %52 = load %struct.ccdc_csc*, %struct.ccdc_csc** %2, align 8
  %53 = getelementptr inbounds %struct.ccdc_csc, %struct.ccdc_csc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CCDC_CSC_COEF_INTEG_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @CCDC_CSC_COEF_INTEG_SHIFT, align 4
  %63 = shl i32 %61, %62
  store i32 %63, i32* %4, align 4
  %64 = load %struct.ccdc_csc*, %struct.ccdc_csc** %2, align 8
  %65 = getelementptr inbounds %struct.ccdc_csc, %struct.ccdc_csc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CCDC_CSC_COEF_DECIMAL_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @CCDC_CSC_DEC_MAX, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sdiv i32 %75, 100
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* @CCDC_CSCM_MSB_SHIFT, align 4
  %80 = load i32, i32* %4, align 4
  %81 = shl i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i64, i64* @CSCM0, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sub nsw i32 %87, 1
  %89 = shl i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %86, %90
  %92 = call i32 @regw(i32 %85, i64 %91)
  br label %93

93:                                               ; preds = %51, %23
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %15

97:                                               ; preds = %10, %15
  ret void
}

declare dso_local i32 @regw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
