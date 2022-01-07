; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_m_series_clock_src_select.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_m_series_clock_src_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32* }

@Gi_Source_Select_Mask = common dso_local global i32 0, align 4
@Gi_Source_Select_Shift = common dso_local global i32 0, align 4
@NI_GPCT_TIMEBASE_1_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_TIMEBASE_2_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@Gi_Source_Subselect_Bit = common dso_local global i32 0, align 4
@NI_GPCT_ANALOG_TRIGGER_OUT_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_TIMEBASE_3_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_LOGIC_LOW_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_PXI_STAR_TRIGGER_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_NEXT_GATE_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_PXI10_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_NEXT_TC_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@ni_m_series_max_rtsi_channel = common dso_local global i32 0, align 4
@ni_m_series_max_pfi_channel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*)* @ni_m_series_clock_src_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_m_series_clock_src_select(%struct.ni_gpct* %0) #0 {
  %2 = alloca %struct.ni_gpct*, align 8
  %3 = alloca %struct.ni_gpct_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %2, align 8
  %8 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %9 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %8, i32 0, i32 1
  %10 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %9, align 8
  store %struct.ni_gpct_device* %10, %struct.ni_gpct_device** %3, align 8
  %11 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %12 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @NITIO_Gi_Second_Gate_Reg(i32 %13)
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %16 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %17 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @NITIO_Gi_Input_Select_Reg(i32 %18)
  %20 = call i32 @ni_tio_get_soft_copy(%struct.ni_gpct* %15, i32 %19)
  %21 = load i32, i32* @Gi_Source_Select_Mask, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @Gi_Source_Select_Shift, align 4
  %24 = lshr i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %68 [
    i32 130, label %26
    i32 129, label %28
    i32 128, label %30
    i32 134, label %46
    i32 133, label %48
    i32 131, label %64
    i32 132, label %66
  ]

26:                                               ; preds = %1
  %27 = load i32, i32* @NI_GPCT_TIMEBASE_1_CLOCK_SRC_BITS, align 4
  store i32 %27, i32* %5, align 4
  br label %114

28:                                               ; preds = %1
  %29 = load i32, i32* @NI_GPCT_TIMEBASE_2_CLOCK_SRC_BITS, align 4
  store i32 %29, i32* %5, align 4
  br label %114

30:                                               ; preds = %1
  %31 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %32 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @Gi_Source_Subselect_Bit, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* @NI_GPCT_ANALOG_TRIGGER_OUT_CLOCK_SRC_BITS, align 4
  store i32 %42, i32* %5, align 4
  br label %45

43:                                               ; preds = %30
  %44 = load i32, i32* @NI_GPCT_TIMEBASE_3_CLOCK_SRC_BITS, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %41
  br label %114

46:                                               ; preds = %1
  %47 = load i32, i32* @NI_GPCT_LOGIC_LOW_CLOCK_SRC_BITS, align 4
  store i32 %47, i32* %5, align 4
  br label %114

48:                                               ; preds = %1
  %49 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %3, align 8
  %50 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @Gi_Source_Subselect_Bit, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* @NI_GPCT_PXI_STAR_TRIGGER_CLOCK_SRC_BITS, align 4
  store i32 %60, i32* %5, align 4
  br label %63

61:                                               ; preds = %48
  %62 = load i32, i32* @NI_GPCT_NEXT_GATE_CLOCK_SRC_BITS, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %59
  br label %114

64:                                               ; preds = %1
  %65 = load i32, i32* @NI_GPCT_PXI10_CLOCK_SRC_BITS, align 4
  store i32 %65, i32* %5, align 4
  br label %114

66:                                               ; preds = %1
  %67 = load i32, i32* @NI_GPCT_NEXT_TC_CLOCK_SRC_BITS, align 4
  store i32 %67, i32* %5, align 4
  br label %114

68:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %82, %68
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @ni_m_series_max_rtsi_channel, align 4
  %72 = icmp ule i32 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @NI_M_Series_RTSI_Clock(i32 %75)
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @NI_GPCT_RTSI_CLOCK_SRC_BITS(i32 %79)
  store i32 %80, i32* %5, align 4
  br label %85

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %69

85:                                               ; preds = %78, %69
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @ni_m_series_max_rtsi_channel, align 4
  %88 = icmp ule i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %114

90:                                               ; preds = %85
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %104, %90
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @ni_m_series_max_pfi_channel, align 4
  %94 = icmp ule i32 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @NI_M_Series_PFI_Clock(i32 %97)
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @NI_GPCT_PFI_CLOCK_SRC_BITS(i32 %101)
  store i32 %102, i32* %5, align 4
  br label %107

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %6, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %91

107:                                              ; preds = %100, %91
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @ni_m_series_max_pfi_channel, align 4
  %110 = icmp ule i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %114

112:                                              ; preds = %107
  %113 = call i32 (...) @BUG()
  br label %114

114:                                              ; preds = %112, %111, %89, %66, %64, %63, %46, %45, %28, %26
  %115 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %116 = call i32 @ni_tio_clock_src_modifiers(%struct.ni_gpct* %115)
  %117 = load i32, i32* %5, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @NITIO_Gi_Second_Gate_Reg(i32) #1

declare dso_local i32 @ni_tio_get_soft_copy(%struct.ni_gpct*, i32) #1

declare dso_local i32 @NITIO_Gi_Input_Select_Reg(i32) #1

declare dso_local i32 @NI_M_Series_RTSI_Clock(i32) #1

declare dso_local i32 @NI_GPCT_RTSI_CLOCK_SRC_BITS(i32) #1

declare dso_local i32 @NI_M_Series_PFI_Clock(i32) #1

declare dso_local i32 @NI_GPCT_PFI_CLOCK_SRC_BITS(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ni_tio_clock_src_modifiers(%struct.ni_gpct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
