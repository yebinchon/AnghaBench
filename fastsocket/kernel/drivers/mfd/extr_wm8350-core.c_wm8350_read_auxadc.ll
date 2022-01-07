; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-core.c_wm8350_read_auxadc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-core.c_wm8350_read_auxadc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32, i32 }

@WM8350_AUXADC_AUX1 = common dso_local global i32 0, align 4
@WM8350_AUXADC_TEMP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8350_AUXADC_USB = common dso_local global i32 0, align 4
@WM8350_POWER_MGMT_5 = common dso_local global i64 0, align 8
@WM8350_AUXADC_ENA = common dso_local global i32 0, align 4
@WM8350_AUX1_READBACK = common dso_local global i64 0, align 8
@WM8350_DIGITISER_CONTROL_1 = common dso_local global i64 0, align 8
@WM8350_AUXADC_POLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"adc chn %d read timeout\0A\00", align 1
@WM8350_AUXADC_DATA1_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm8350_read_auxadc(%struct.wm8350* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8350*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 5, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @WM8350_AUXADC_AUX1, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @WM8350_AUXADC_TEMP, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %135

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @WM8350_AUXADC_USB, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @WM8350_AUXADC_TEMP, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %135

40:                                               ; preds = %34, %27, %23
  %41 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %42 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %45 = load i64, i64* @WM8350_POWER_MGMT_5, align 8
  %46 = call i32 @wm8350_reg_read(%struct.wm8350* %44, i64 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %48 = load i64, i64* @WM8350_POWER_MGMT_5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @WM8350_AUXADC_ENA, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @wm8350_reg_write(%struct.wm8350* %47, i64 %48, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %40
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %55, %40
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 %59, 13
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = shl i32 %61, 12
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %66 = load i64, i64* @WM8350_AUX1_READBACK, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @wm8350_reg_write(%struct.wm8350* %65, i64 %69, i32 %70)
  br label %72

72:                                               ; preds = %58, %55
  %73 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %74 = load i64, i64* @WM8350_DIGITISER_CONTROL_1, align 8
  %75 = call i32 @wm8350_reg_read(%struct.wm8350* %73, i64 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %7, align 4
  %77 = shl i32 1, %76
  %78 = load i32, i32* @WM8350_AUXADC_POLL, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  %82 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %83 = load i64, i64* @WM8350_DIGITISER_CONTROL_1, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @wm8350_reg_write(%struct.wm8350* %82, i64 %83, i32 %84)
  br label %86

86:                                               ; preds = %100, %72
  %87 = call i32 @schedule_timeout_interruptible(i32 1)
  %88 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %89 = load i64, i64* @WM8350_DIGITISER_CONTROL_1, align 8
  %90 = call i32 @wm8350_reg_read(%struct.wm8350* %88, i64 %89)
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @WM8350_AUXADC_POLL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br label %100

100:                                              ; preds = %96, %91
  %101 = phi i1 [ false, %91 ], [ %99, %96 ]
  br i1 %101, label %86, label %102

102:                                              ; preds = %100
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %102
  %106 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %107 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %118

111:                                              ; preds = %102
  %112 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %113 = load i64, i64* @WM8350_AUX1_READBACK, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %113, %115
  %117 = call i32 @wm8350_reg_read(%struct.wm8350* %112, i64 %116)
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %111, %105
  %119 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %120 = load i64, i64* @WM8350_POWER_MGMT_5, align 8
  %121 = call i32 @wm8350_reg_read(%struct.wm8350* %119, i64 %120)
  store i32 %121, i32* %10, align 4
  %122 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %123 = load i64, i64* @WM8350_POWER_MGMT_5, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @WM8350_AUXADC_ENA, align 4
  %126 = xor i32 %125, -1
  %127 = and i32 %124, %126
  %128 = call i32 @wm8350_reg_write(%struct.wm8350* %122, i64 %123, i32 %127)
  %129 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %130 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %129, i32 0, i32 0
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @WM8350_AUXADC_DATA1_MASK, align 4
  %134 = and i32 %132, %133
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %118, %37, %20
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i64) #1

declare dso_local i32 @wm8350_reg_write(%struct.wm8350*, i64, i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
