; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_clock_src_select.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_clock_src_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32 }

@Gi_Source_Select_Mask = common dso_local global i32 0, align 4
@Gi_Source_Select_Shift = common dso_local global i32 0, align 4
@NI_GPCT_TIMEBASE_1_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_TIMEBASE_2_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_TIMEBASE_3_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_LOGIC_LOW_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_SOURCE_PIN_i_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_NEXT_GATE_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@NI_GPCT_NEXT_TC_CLOCK_SRC_BITS = common dso_local global i32 0, align 4
@ni_660x_max_rtsi_channel = common dso_local global i32 0, align 4
@ni_660x_max_source_pin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*)* @ni_660x_clock_src_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_660x_clock_src_select(%struct.ni_gpct* %0) #0 {
  %2 = alloca %struct.ni_gpct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %7 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %8 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @NITIO_Gi_Input_Select_Reg(i32 %9)
  %11 = call i32 @ni_tio_get_soft_copy(%struct.ni_gpct* %6, i32 %10)
  %12 = load i32, i32* @Gi_Source_Select_Mask, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @Gi_Source_Select_Shift, align 4
  %15 = lshr i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %31 [
    i32 130, label %17
    i32 129, label %19
    i32 128, label %21
    i32 134, label %23
    i32 131, label %25
    i32 133, label %27
    i32 132, label %29
  ]

17:                                               ; preds = %1
  %18 = load i32, i32* @NI_GPCT_TIMEBASE_1_CLOCK_SRC_BITS, align 4
  store i32 %18, i32* %3, align 4
  br label %77

19:                                               ; preds = %1
  %20 = load i32, i32* @NI_GPCT_TIMEBASE_2_CLOCK_SRC_BITS, align 4
  store i32 %20, i32* %3, align 4
  br label %77

21:                                               ; preds = %1
  %22 = load i32, i32* @NI_GPCT_TIMEBASE_3_CLOCK_SRC_BITS, align 4
  store i32 %22, i32* %3, align 4
  br label %77

23:                                               ; preds = %1
  %24 = load i32, i32* @NI_GPCT_LOGIC_LOW_CLOCK_SRC_BITS, align 4
  store i32 %24, i32* %3, align 4
  br label %77

25:                                               ; preds = %1
  %26 = load i32, i32* @NI_GPCT_SOURCE_PIN_i_CLOCK_SRC_BITS, align 4
  store i32 %26, i32* %3, align 4
  br label %77

27:                                               ; preds = %1
  %28 = load i32, i32* @NI_GPCT_NEXT_GATE_CLOCK_SRC_BITS, align 4
  store i32 %28, i32* %3, align 4
  br label %77

29:                                               ; preds = %1
  %30 = load i32, i32* @NI_GPCT_NEXT_TC_CLOCK_SRC_BITS, align 4
  store i32 %30, i32* %3, align 4
  br label %77

31:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %45, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @ni_660x_max_rtsi_channel, align 4
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @NI_660x_RTSI_Clock(i32 %38)
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @NI_GPCT_RTSI_CLOCK_SRC_BITS(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %48

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %32

48:                                               ; preds = %41, %32
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @ni_660x_max_rtsi_channel, align 4
  %51 = icmp ule i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %77

53:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %67, %53
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @ni_660x_max_source_pin, align 4
  %57 = icmp ule i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @NI_660x_Source_Pin_Clock(i32 %60)
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @NI_GPCT_SOURCE_PIN_CLOCK_SRC_BITS(i32 %64)
  store i32 %65, i32* %3, align 4
  br label %70

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %54

70:                                               ; preds = %63, %54
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @ni_660x_max_source_pin, align 4
  %73 = icmp ule i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %77

75:                                               ; preds = %70
  %76 = call i32 (...) @BUG()
  br label %77

77:                                               ; preds = %75, %74, %52, %29, %27, %25, %23, %21, %19, %17
  %78 = load %struct.ni_gpct*, %struct.ni_gpct** %2, align 8
  %79 = call i32 @ni_tio_clock_src_modifiers(%struct.ni_gpct* %78)
  %80 = load i32, i32* %3, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @ni_tio_get_soft_copy(%struct.ni_gpct*, i32) #1

declare dso_local i32 @NITIO_Gi_Input_Select_Reg(i32) #1

declare dso_local i32 @NI_660x_RTSI_Clock(i32) #1

declare dso_local i32 @NI_GPCT_RTSI_CLOCK_SRC_BITS(i32) #1

declare dso_local i32 @NI_660x_Source_Pin_Clock(i32) #1

declare dso_local i32 @NI_GPCT_SOURCE_PIN_CLOCK_SRC_BITS(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ni_tio_clock_src_modifiers(%struct.ni_gpct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
