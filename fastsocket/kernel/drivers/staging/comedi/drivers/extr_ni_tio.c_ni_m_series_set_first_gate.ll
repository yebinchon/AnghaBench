; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_m_series_set_first_gate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_m_series_set_first_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32 }

@ni_m_series_max_rtsi_channel = common dso_local global i32 0, align 4
@ni_m_series_max_pfi_channel = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@Gi_Gate_Select_Mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*, i32)* @ni_m_series_set_first_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_m_series_set_first_gate(%struct.ni_gpct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ni_gpct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @CR_CHAN(i32 %10)
  store i32 %11, i32* %6, align 4
  store i32 31, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %16 [
    i32 128, label %13
    i32 134, label %13
    i32 129, label %13
    i32 131, label %13
    i32 135, label %13
    i32 130, label %13
    i32 133, label %13
    i32 132, label %13
  ]

13:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 31
  store i32 %15, i32* %8, align 4
  br label %63

16:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %30, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @ni_m_series_max_rtsi_channel, align 4
  %20 = icmp ule i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @NI_GPCT_RTSI_GATE_SELECT(i32 %23)
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 31
  store i32 %28, i32* %8, align 4
  br label %33

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %9, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %17

33:                                               ; preds = %26, %17
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @ni_m_series_max_rtsi_channel, align 4
  %36 = icmp ule i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %63

38:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %52, %38
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @ni_m_series_max_pfi_channel, align 4
  %42 = icmp ule i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @NI_GPCT_PFI_GATE_SELECT(i32 %45)
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 31
  store i32 %50, i32* %8, align 4
  br label %55

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %39

55:                                               ; preds = %48, %39
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @ni_m_series_max_pfi_channel, align 4
  %58 = icmp ule i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %73

63:                                               ; preds = %59, %37, %13
  %64 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %65 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %66 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @NITIO_Gi_Input_Select_Reg(i32 %67)
  %69 = load i32, i32* @Gi_Gate_Select_Mask, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @Gi_Gate_Select_Bits(i32 %70)
  %72 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %64, i32 %68, i32 %69, i32 %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %63, %60
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @NI_GPCT_RTSI_GATE_SELECT(i32) #1

declare dso_local i32 @NI_GPCT_PFI_GATE_SELECT(i32) #1

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

declare dso_local i32 @NITIO_Gi_Input_Select_Reg(i32) #1

declare dso_local i32 @Gi_Gate_Select_Bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
