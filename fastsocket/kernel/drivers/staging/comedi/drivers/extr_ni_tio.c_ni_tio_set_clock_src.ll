; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_clock_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_tio_set_clock_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32 }

@ni_tio_set_clock_src.pico_per_nano = internal constant i32 1000, align 4
@NI_GPCT_INVERT_CLOCK_SRC_BIT = common dso_local global i32 0, align 4
@Gi_Source_Polarity_Bit = common dso_local global i32 0, align 4
@Gi_Source_Select_Mask = common dso_local global i32 0, align 4
@NI_GPCT_PRESCALE_MODE_CLOCK_SRC_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*, i32, i32)* @ni_tio_set_clock_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_tio_set_clock_src(%struct.ni_gpct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ni_gpct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ni_gpct_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %13 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %12, i32 0, i32 2
  %14 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %13, align 8
  store %struct.ni_gpct_device* %14, %struct.ni_gpct_device** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %16 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %28 [
    i32 130, label %18
    i32 129, label %23
    i32 128, label %23
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ni_660x_source_select_bits(i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %9, align 4
  br label %30

23:                                               ; preds = %3, %3
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ni_m_series_source_select_bits(i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  br label %30

28:                                               ; preds = %3
  %29 = call i32 (...) @BUG()
  br label %30

30:                                               ; preds = %28, %23, %18
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @NI_GPCT_INVERT_CLOCK_SRC_BIT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @Gi_Source_Polarity_Bit, align 4
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %41 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %42 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @NITIO_Gi_Input_Select_Reg(i32 %43)
  %45 = load i32, i32* @Gi_Source_Select_Mask, align 4
  %46 = load i32, i32* @Gi_Source_Polarity_Bit, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %40, i32 %44, i32 %47, i32 %48)
  %50 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @ni_tio_set_source_subselect(%struct.ni_gpct* %50, i32 %51)
  %53 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %54 = call i64 @ni_tio_counting_mode_registers_present(%struct.ni_gpct_device* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %96

56:                                               ; preds = %39
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @NI_GPCT_PRESCALE_MODE_CLOCK_SRC_MASK, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  switch i32 %60, label %76 [
    i32 133, label %61
    i32 132, label %62
    i32 131, label %69
  ]

61:                                               ; preds = %56
  br label %79

62:                                               ; preds = %56
  %63 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %64 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @Gi_Prescale_X2_Bit(i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %79

69:                                               ; preds = %56
  %70 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %71 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @Gi_Prescale_X8_Bit(i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %11, align 4
  br label %79

76:                                               ; preds = %56
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %103

79:                                               ; preds = %69, %62, %61
  %80 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %81 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %82 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @NITIO_Gi_Counting_Mode_Reg(i32 %83)
  %85 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %86 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @Gi_Prescale_X2_Bit(i32 %87)
  %89 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  %90 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @Gi_Prescale_X8_Bit(i32 %91)
  %93 = or i32 %88, %92
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %80, i32 %84, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %79, %39
  %97 = load i32, i32* %7, align 4
  %98 = mul i32 1000, %97
  %99 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %100 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %102 = call i32 @ni_tio_set_sync_mode(%struct.ni_gpct* %101, i32 0)
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %96, %76
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @ni_660x_source_select_bits(i32) #1

declare dso_local i32 @ni_m_series_source_select_bits(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

declare dso_local i32 @NITIO_Gi_Input_Select_Reg(i32) #1

declare dso_local i32 @ni_tio_set_source_subselect(%struct.ni_gpct*, i32) #1

declare dso_local i64 @ni_tio_counting_mode_registers_present(%struct.ni_gpct_device*) #1

declare dso_local i32 @Gi_Prescale_X2_Bit(i32) #1

declare dso_local i32 @Gi_Prescale_X8_Bit(i32) #1

declare dso_local i32 @NITIO_Gi_Counting_Mode_Reg(i32) #1

declare dso_local i32 @ni_tio_set_sync_mode(%struct.ni_gpct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
