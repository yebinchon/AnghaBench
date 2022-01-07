; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_m_series_source_select_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_m_series_source_select_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NI_GPCT_CLOCK_SRC_SELECT_MASK = common dso_local global i32 0, align 4
@NI_M_Series_Timebase_1_Clock = common dso_local global i32 0, align 4
@NI_M_Series_Timebase_2_Clock = common dso_local global i32 0, align 4
@NI_M_Series_Timebase_3_Clock = common dso_local global i32 0, align 4
@NI_M_Series_Logic_Low_Clock = common dso_local global i32 0, align 4
@NI_M_Series_Next_Gate_Clock = common dso_local global i32 0, align 4
@NI_M_Series_Next_TC_Clock = common dso_local global i32 0, align 4
@NI_M_Series_PXI10_Clock = common dso_local global i32 0, align 4
@NI_M_Series_PXI_Star_Trigger_Clock = common dso_local global i32 0, align 4
@NI_M_Series_Analog_Trigger_Out_Clock = common dso_local global i32 0, align 4
@ni_m_series_max_rtsi_channel = common dso_local global i32 0, align 4
@ni_m_series_max_pfi_channel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid clock source 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ni_m_series_source_select_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_m_series_source_select_bits(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @NI_GPCT_CLOCK_SRC_SELECT_MASK, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %28 [
    i32 130, label %10
    i32 129, label %12
    i32 128, label %14
    i32 135, label %16
    i32 134, label %18
    i32 133, label %20
    i32 132, label %22
    i32 131, label %24
    i32 136, label %26
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @NI_M_Series_Timebase_1_Clock, align 4
  store i32 %11, i32* %3, align 4
  br label %77

12:                                               ; preds = %1
  %13 = load i32, i32* @NI_M_Series_Timebase_2_Clock, align 4
  store i32 %13, i32* %3, align 4
  br label %77

14:                                               ; preds = %1
  %15 = load i32, i32* @NI_M_Series_Timebase_3_Clock, align 4
  store i32 %15, i32* %3, align 4
  br label %77

16:                                               ; preds = %1
  %17 = load i32, i32* @NI_M_Series_Logic_Low_Clock, align 4
  store i32 %17, i32* %3, align 4
  br label %77

18:                                               ; preds = %1
  %19 = load i32, i32* @NI_M_Series_Next_Gate_Clock, align 4
  store i32 %19, i32* %3, align 4
  br label %77

20:                                               ; preds = %1
  %21 = load i32, i32* @NI_M_Series_Next_TC_Clock, align 4
  store i32 %21, i32* %3, align 4
  br label %77

22:                                               ; preds = %1
  %23 = load i32, i32* @NI_M_Series_PXI10_Clock, align 4
  store i32 %23, i32* %3, align 4
  br label %77

24:                                               ; preds = %1
  %25 = load i32, i32* @NI_M_Series_PXI_Star_Trigger_Clock, align 4
  store i32 %25, i32* %3, align 4
  br label %77

26:                                               ; preds = %1
  %27 = load i32, i32* @NI_M_Series_Analog_Trigger_Out_Clock, align 4
  store i32 %27, i32* %3, align 4
  br label %77

28:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %42, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @ni_m_series_max_rtsi_channel, align 4
  %32 = icmp ule i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @NI_GPCT_RTSI_CLOCK_SRC_BITS(i32 %35)
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @NI_M_Series_RTSI_Clock(i32 %39)
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %29

45:                                               ; preds = %38, %29
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @ni_m_series_max_rtsi_channel, align 4
  %48 = icmp ule i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %77

50:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %64, %50
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @ni_m_series_max_pfi_channel, align 4
  %54 = icmp ule i32 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @NI_GPCT_PFI_CLOCK_SRC_BITS(i32 %57)
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @NI_M_Series_PFI_Clock(i32 %61)
  store i32 %62, i32* %3, align 4
  br label %67

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %51

67:                                               ; preds = %60, %51
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @ni_m_series_max_pfi_channel, align 4
  %70 = icmp ule i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %77

72:                                               ; preds = %67
  %73 = load i32, i32* %2, align 4
  %74 = zext i32 %73 to i64
  %75 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %74)
  %76 = call i32 (...) @BUG()
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %71, %49, %26, %24, %22, %20, %18, %16, %14, %12, %10
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @Gi_Source_Select_Bits(i32 %78)
  ret i32 %79
}

declare dso_local i32 @NI_GPCT_RTSI_CLOCK_SRC_BITS(i32) #1

declare dso_local i32 @NI_M_Series_RTSI_Clock(i32) #1

declare dso_local i32 @NI_GPCT_PFI_CLOCK_SRC_BITS(i32) #1

declare dso_local i32 @NI_M_Series_PFI_Clock(i32) #1

declare dso_local i32 @printk(i8*, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @Gi_Source_Select_Bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
