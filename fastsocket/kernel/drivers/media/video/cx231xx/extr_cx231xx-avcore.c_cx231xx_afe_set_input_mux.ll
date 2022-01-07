; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_afe_set_input_mux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_afe_set_input_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@ADC_INPUT_CH1 = common dso_local global i32 0, align 4
@INPUT_SEL_MASK = common dso_local global i32 0, align 4
@ADC_INPUT_CH2 = common dso_local global i32 0, align 4
@ADC_INPUT_CH3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_afe_set_input_mux(%struct.cx231xx* %0, i32 %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, 16
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %2
  %18 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %19 = load i32, i32* @ADC_INPUT_CH1, align 4
  %20 = call i32 @afe_read_byte(%struct.cx231xx* %18, i32 %19, i32* %9)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @INPUT_SEL_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 1
  %27 = shl i32 %26, 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 255
  store i32 %31, i32* %9, align 4
  %32 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %33 = load i32, i32* @ADC_INPUT_CH1, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @afe_write_byte(%struct.cx231xx* %32, i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %17, %2
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %41 = load i32, i32* @ADC_INPUT_CH2, align 4
  %42 = call i32 @afe_read_byte(%struct.cx231xx* %40, i32 %41, i32* %9)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @INPUT_SEL_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, 1
  %49 = shl i32 %48, 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 255
  store i32 %53, i32* %9, align 4
  %54 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %55 = load i32, i32* @ADC_INPUT_CH2, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @afe_write_byte(%struct.cx231xx* %54, i32 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %39, %36
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %58
  %62 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %63 = load i32, i32* @ADC_INPUT_CH3, align 4
  %64 = call i32 @afe_read_byte(%struct.cx231xx* %62, i32 %63, i32* %9)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @INPUT_SEL_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %69, 1
  %71 = shl i32 %70, 4
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, 255
  store i32 %75, i32* %9, align 4
  %76 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %77 = load i32, i32* @ADC_INPUT_CH3, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @afe_write_byte(%struct.cx231xx* %76, i32 %77, i32 %78)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %61, %58
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local i32 @afe_read_byte(%struct.cx231xx*, i32, i32*) #1

declare dso_local i32 @afe_write_byte(%struct.cx231xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
