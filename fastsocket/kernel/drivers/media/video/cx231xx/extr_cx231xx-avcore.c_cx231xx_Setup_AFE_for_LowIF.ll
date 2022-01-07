; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_Setup_AFE_for_LowIF.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_Setup_AFE_for_LowIF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@ADC_STATUS2_CH3 = common dso_local global i32 0, align 4
@ADC_NTF_PRECLMP_EN_CH3 = common dso_local global i32 0, align 4
@ADC_INPUT_CH3 = common dso_local global i32 0, align 4
@ADC_FB_FRCRST_CH3 = common dso_local global i32 0, align 4
@ADC_DCSERVO_DEM_CH3 = common dso_local global i32 0, align 4
@ADC_CTRL_DAC1_CH3 = common dso_local global i32 0, align 4
@ADC_CTRL_DAC23_CH3 = common dso_local global i32 0, align 4
@ADC_PWRDN_CLAMP_CH3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_Setup_AFE_for_LowIF(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %6 = load i32, i32* @ADC_STATUS2_CH3, align 4
  %7 = call i32 @afe_read_byte(%struct.cx231xx* %5, i32 %6, i32* %4)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 254
  %10 = or i32 %9, 1
  store i32 %10, i32* %4, align 4
  %11 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %12 = load i32, i32* @ADC_STATUS2_CH3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @afe_write_byte(%struct.cx231xx* %11, i32 %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %16 = load i32, i32* @ADC_STATUS2_CH3, align 4
  %17 = call i32 @afe_read_byte(%struct.cx231xx* %15, i32 %16, i32* %4)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 254
  store i32 %19, i32* %4, align 4
  %20 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %21 = load i32, i32* @ADC_STATUS2_CH3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @afe_write_byte(%struct.cx231xx* %20, i32 %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %25 = load i32, i32* @ADC_NTF_PRECLMP_EN_CH3, align 4
  %26 = call i32 @afe_read_byte(%struct.cx231xx* %24, i32 %25, i32* %4)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 252
  store i32 %28, i32* %4, align 4
  %29 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %30 = load i32, i32* @ADC_NTF_PRECLMP_EN_CH3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @afe_write_byte(%struct.cx231xx* %29, i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %34 = load i32, i32* @ADC_INPUT_CH3, align 4
  %35 = call i32 @afe_read_byte(%struct.cx231xx* %33, i32 %34, i32* %4)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 249
  %38 = or i32 %37, 2
  store i32 %38, i32* %4, align 4
  %39 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %40 = load i32, i32* @ADC_INPUT_CH3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @afe_write_byte(%struct.cx231xx* %39, i32 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %44 = load i32, i32* @ADC_FB_FRCRST_CH3, align 4
  %45 = call i32 @afe_read_byte(%struct.cx231xx* %43, i32 %44, i32* %4)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, 251
  %48 = or i32 %47, 4
  store i32 %48, i32* %4, align 4
  %49 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %50 = load i32, i32* @ADC_FB_FRCRST_CH3, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @afe_write_byte(%struct.cx231xx* %49, i32 %50, i32 %51)
  store i32 %52, i32* %3, align 4
  %53 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %54 = load i32, i32* @ADC_DCSERVO_DEM_CH3, align 4
  %55 = call i32 @afe_read_byte(%struct.cx231xx* %53, i32 %54, i32* %4)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, 252
  %58 = or i32 %57, 3
  store i32 %58, i32* %4, align 4
  %59 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %60 = load i32, i32* @ADC_DCSERVO_DEM_CH3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @afe_write_byte(%struct.cx231xx* %59, i32 %60, i32 %61)
  store i32 %62, i32* %3, align 4
  %63 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %64 = load i32, i32* @ADC_CTRL_DAC1_CH3, align 4
  %65 = call i32 @afe_read_byte(%struct.cx231xx* %63, i32 %64, i32* %4)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 251
  %68 = or i32 %67, 4
  store i32 %68, i32* %4, align 4
  %69 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %70 = load i32, i32* @ADC_CTRL_DAC1_CH3, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @afe_write_byte(%struct.cx231xx* %69, i32 %70, i32 %71)
  store i32 %72, i32* %3, align 4
  %73 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %74 = load i32, i32* @ADC_CTRL_DAC23_CH3, align 4
  %75 = call i32 @afe_read_byte(%struct.cx231xx* %73, i32 %74, i32* %4)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, 248
  %78 = or i32 %77, 6
  store i32 %78, i32* %4, align 4
  %79 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %80 = load i32, i32* @ADC_CTRL_DAC23_CH3, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @afe_write_byte(%struct.cx231xx* %79, i32 %80, i32 %81)
  store i32 %82, i32* %3, align 4
  %83 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %84 = load i32, i32* @ADC_CTRL_DAC23_CH3, align 4
  %85 = call i32 @afe_read_byte(%struct.cx231xx* %83, i32 %84, i32* %4)
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %4, align 4
  %87 = and i32 %86, 143
  %88 = or i32 %87, 64
  store i32 %88, i32* %4, align 4
  %89 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %90 = load i32, i32* @ADC_CTRL_DAC23_CH3, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @afe_write_byte(%struct.cx231xx* %89, i32 %90, i32 %91)
  store i32 %92, i32* %3, align 4
  %93 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %94 = load i32, i32* @ADC_PWRDN_CLAMP_CH3, align 4
  %95 = call i32 @afe_read_byte(%struct.cx231xx* %93, i32 %94, i32* %4)
  store i32 %95, i32* %3, align 4
  %96 = load i32, i32* %4, align 4
  %97 = and i32 %96, 223
  %98 = or i32 %97, 32
  store i32 %98, i32* %4, align 4
  %99 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %100 = load i32, i32* @ADC_PWRDN_CLAMP_CH3, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @afe_write_byte(%struct.cx231xx* %99, i32 %100, i32 %101)
  store i32 %102, i32* %3, align 4
  ret void
}

declare dso_local i32 @afe_read_byte(%struct.cx231xx*, i32, i32*) #1

declare dso_local i32 @afe_write_byte(%struct.cx231xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
