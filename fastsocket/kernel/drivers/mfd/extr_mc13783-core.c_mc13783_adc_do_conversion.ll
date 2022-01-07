; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_mc13783-core.c_mc13783_adc_do_conversion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_mc13783-core.c_mc13783_adc_do_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc13783 = type { i32, i64, i32 }

@MC13783_ADC0_ADINC1 = common dso_local global i32 0, align 4
@MC13783_ADC0_ADINC2 = common dso_local global i32 0, align 4
@MC13783_ADC1_ADEN = common dso_local global i32 0, align 4
@MC13783_ADC1_ADTRIGIGN = common dso_local global i32 0, align 4
@MC13783_ADC1_ASC = common dso_local global i32 0, align 4
@MC13783_ADC1_ADSEL = common dso_local global i32 0, align 4
@MC13783_ADC0_ADREFEN = common dso_local global i32 0, align 4
@MC13783_ADC0_ADREFMODE = common dso_local global i32 0, align 4
@MC13783_ADC0_TSMOD0 = common dso_local global i32 0, align 4
@MC13783_ADC0_TSMOD1 = common dso_local global i32 0, align 4
@MC13783_ADC1_CHAN1_SHIFT = common dso_local global i32 0, align 4
@MC13783_ADC1_CHAN0_SHIFT = common dso_local global i32 0, align 4
@MC13783_ADC1_RAND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MC13783_REG_ADC_0 = common dso_local global i32 0, align 4
@MC13783_REG_ADC_1 = common dso_local global i32 0, align 4
@MC13783_REG_ADC_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mc13783_adc_do_conversion(%struct.mc13783* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mc13783*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mc13783* %0, %struct.mc13783** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.mc13783*, %struct.mc13783** %6, align 8
  %14 = getelementptr inbounds %struct.mc13783, %struct.mc13783* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32, i32* @MC13783_ADC0_ADINC1, align 4
  %17 = load i32, i32* @MC13783_ADC0_ADINC2, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @MC13783_ADC1_ADEN, align 4
  %20 = load i32, i32* @MC13783_ADC1_ADTRIGIGN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MC13783_ADC1_ASC, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ugt i32 %24, 7
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i32, i32* @MC13783_ADC1_ADSEL, align 4
  %28 = load i32, i32* %11, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %26, %4
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %61 [
    i32 128, label %32
    i32 129, label %46
    i32 130, label %56
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* @MC13783_ADC0_ADREFEN, align 4
  %34 = load i32, i32* @MC13783_ADC0_ADREFMODE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @MC13783_ADC0_TSMOD0, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @MC13783_ADC0_TSMOD1, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* @MC13783_ADC1_CHAN1_SHIFT, align 4
  %43 = shl i32 4, %42
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %11, align 4
  br label %64

46:                                               ; preds = %30
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 7
  %49 = load i32, i32* @MC13783_ADC1_CHAN0_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* @MC13783_ADC1_RAND, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %64

56:                                               ; preds = %30
  %57 = load i32, i32* @MC13783_ADC1_CHAN1_SHIFT, align 4
  %58 = shl i32 4, %57
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %11, align 4
  br label %64

61:                                               ; preds = %30
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %102

64:                                               ; preds = %56, %46, %32
  %65 = load %struct.mc13783*, %struct.mc13783** %6, align 8
  %66 = load i32, i32* @MC13783_REG_ADC_0, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @mc13783_reg_write(%struct.mc13783* %65, i32 %66, i32 %67)
  %69 = load %struct.mc13783*, %struct.mc13783** %6, align 8
  %70 = load i32, i32* @MC13783_REG_ADC_1, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @mc13783_reg_write(%struct.mc13783* %69, i32 %70, i32 %71)
  %73 = load %struct.mc13783*, %struct.mc13783** %6, align 8
  %74 = getelementptr inbounds %struct.mc13783, %struct.mc13783* %73, i32 0, i32 2
  %75 = call i32 @wait_for_completion_interruptible(i32* %74)
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %87, %64
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 4
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load %struct.mc13783*, %struct.mc13783** %6, align 8
  %81 = load i32, i32* @MC13783_REG_ADC_2, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call i32 @mc13783_reg_read(%struct.mc13783* %80, i32 %81, i32* %85)
  br label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %76

90:                                               ; preds = %76
  %91 = load %struct.mc13783*, %struct.mc13783** %6, align 8
  %92 = getelementptr inbounds %struct.mc13783, %struct.mc13783* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.mc13783*, %struct.mc13783** %6, align 8
  %97 = call i32 @mc13783_adc_set_ts_irq_mode(%struct.mc13783* %96)
  br label %98

98:                                               ; preds = %95, %90
  %99 = load %struct.mc13783*, %struct.mc13783** %6, align 8
  %100 = getelementptr inbounds %struct.mc13783, %struct.mc13783* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %98, %61
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mc13783_reg_write(%struct.mc13783*, i32, i32) #1

declare dso_local i32 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @mc13783_reg_read(%struct.mc13783*, i32, i32*) #1

declare dso_local i32 @mc13783_adc_set_ts_irq_mode(%struct.mc13783*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
