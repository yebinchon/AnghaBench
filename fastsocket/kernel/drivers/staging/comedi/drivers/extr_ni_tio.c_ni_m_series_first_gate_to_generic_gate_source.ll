; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_m_series_first_gate_to_generic_gate_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_m_series_first_gate_to_generic_gate_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NI_GPCT_TIMESTAMP_MUX_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_AI_START2_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_PXI_STAR_TRIGGER_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_NEXT_OUT_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_AI_START1_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_NEXT_SOURCE_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_ANALOG_TRIGGER_OUT_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_LOGIC_LOW_GATE_SELECT = common dso_local global i32 0, align 4
@ni_m_series_max_rtsi_channel = common dso_local global i32 0, align 4
@ni_m_series_max_pfi_channel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ni_m_series_first_gate_to_generic_gate_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_m_series_first_gate_to_generic_gate_source(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %22 [
    i32 128, label %6
    i32 134, label %8
    i32 129, label %10
    i32 131, label %12
    i32 135, label %14
    i32 130, label %16
    i32 133, label %18
    i32 132, label %20
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @NI_GPCT_TIMESTAMP_MUX_GATE_SELECT, align 4
  store i32 %7, i32* %2, align 4
  br label %69

8:                                                ; preds = %1
  %9 = load i32, i32* @NI_GPCT_AI_START2_GATE_SELECT, align 4
  store i32 %9, i32* %2, align 4
  br label %69

10:                                               ; preds = %1
  %11 = load i32, i32* @NI_GPCT_PXI_STAR_TRIGGER_GATE_SELECT, align 4
  store i32 %11, i32* %2, align 4
  br label %69

12:                                               ; preds = %1
  %13 = load i32, i32* @NI_GPCT_NEXT_OUT_GATE_SELECT, align 4
  store i32 %13, i32* %2, align 4
  br label %69

14:                                               ; preds = %1
  %15 = load i32, i32* @NI_GPCT_AI_START1_GATE_SELECT, align 4
  store i32 %15, i32* %2, align 4
  br label %69

16:                                               ; preds = %1
  %17 = load i32, i32* @NI_GPCT_NEXT_SOURCE_GATE_SELECT, align 4
  store i32 %17, i32* %2, align 4
  br label %69

18:                                               ; preds = %1
  %19 = load i32, i32* @NI_GPCT_ANALOG_TRIGGER_OUT_GATE_SELECT, align 4
  store i32 %19, i32* %2, align 4
  br label %69

20:                                               ; preds = %1
  %21 = load i32, i32* @NI_GPCT_LOGIC_LOW_GATE_SELECT, align 4
  store i32 %21, i32* %2, align 4
  br label %69

22:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ni_m_series_max_rtsi_channel, align 4
  %26 = icmp ule i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @NI_M_Series_RTSI_Gate_Select(i32 %29)
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @NI_GPCT_RTSI_GATE_SELECT(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %69

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %23

39:                                               ; preds = %23
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @ni_m_series_max_rtsi_channel, align 4
  %42 = icmp ule i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %68

44:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %58, %44
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @ni_m_series_max_pfi_channel, align 4
  %48 = icmp ule i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @NI_M_Series_PFI_Gate_Select(i32 %51)
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @NI_GPCT_PFI_GATE_SELECT(i32 %55)
  store i32 %56, i32* %2, align 4
  br label %69

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %45

61:                                               ; preds = %45
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @ni_m_series_max_pfi_channel, align 4
  %64 = icmp ule i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %68

66:                                               ; preds = %61
  %67 = call i32 (...) @BUG()
  br label %68

68:                                               ; preds = %66, %65, %43
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %54, %32, %20, %18, %16, %14, %12, %10, %8, %6
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @NI_M_Series_RTSI_Gate_Select(i32) #1

declare dso_local i32 @NI_GPCT_RTSI_GATE_SELECT(i32) #1

declare dso_local i32 @NI_M_Series_PFI_Gate_Select(i32) #1

declare dso_local i32 @NI_GPCT_PFI_GATE_SELECT(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
