; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_source_select_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_source_select_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NI_GPCT_CLOCK_SRC_SELECT_MASK = common dso_local global i32 0, align 4
@NI_660x_Timebase_1_Clock = common dso_local global i32 0, align 4
@NI_660x_Timebase_2_Clock = common dso_local global i32 0, align 4
@NI_660x_Timebase_3_Clock = common dso_local global i32 0, align 4
@NI_660x_Logic_Low_Clock = common dso_local global i32 0, align 4
@NI_660x_Source_Pin_i_Clock = common dso_local global i32 0, align 4
@NI_660x_Next_Gate_Clock = common dso_local global i32 0, align 4
@NI_660x_Next_TC_Clock = common dso_local global i32 0, align 4
@ni_660x_max_rtsi_channel = common dso_local global i32 0, align 4
@ni_660x_max_source_pin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ni_660x_source_select_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_660x_source_select_bits(i32 %0) #0 {
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
  switch i32 %9, label %24 [
    i32 130, label %10
    i32 129, label %12
    i32 128, label %14
    i32 134, label %16
    i32 131, label %18
    i32 133, label %20
    i32 132, label %22
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @NI_660x_Timebase_1_Clock, align 4
  store i32 %11, i32* %3, align 4
  br label %70

12:                                               ; preds = %1
  %13 = load i32, i32* @NI_660x_Timebase_2_Clock, align 4
  store i32 %13, i32* %3, align 4
  br label %70

14:                                               ; preds = %1
  %15 = load i32, i32* @NI_660x_Timebase_3_Clock, align 4
  store i32 %15, i32* %3, align 4
  br label %70

16:                                               ; preds = %1
  %17 = load i32, i32* @NI_660x_Logic_Low_Clock, align 4
  store i32 %17, i32* %3, align 4
  br label %70

18:                                               ; preds = %1
  %19 = load i32, i32* @NI_660x_Source_Pin_i_Clock, align 4
  store i32 %19, i32* %3, align 4
  br label %70

20:                                               ; preds = %1
  %21 = load i32, i32* @NI_660x_Next_Gate_Clock, align 4
  store i32 %21, i32* %3, align 4
  br label %70

22:                                               ; preds = %1
  %23 = load i32, i32* @NI_660x_Next_TC_Clock, align 4
  store i32 %23, i32* %3, align 4
  br label %70

24:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %38, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @ni_660x_max_rtsi_channel, align 4
  %28 = icmp ule i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @NI_GPCT_RTSI_CLOCK_SRC_BITS(i32 %31)
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @NI_660x_RTSI_Clock(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %25

41:                                               ; preds = %34, %25
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @ni_660x_max_rtsi_channel, align 4
  %44 = icmp ule i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %70

46:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %60, %46
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @ni_660x_max_source_pin, align 4
  %50 = icmp ule i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @NI_GPCT_SOURCE_PIN_CLOCK_SRC_BITS(i32 %53)
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @NI_660x_Source_Pin_Clock(i32 %57)
  store i32 %58, i32* %3, align 4
  br label %63

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %47

63:                                               ; preds = %56, %47
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @ni_660x_max_source_pin, align 4
  %66 = icmp ule i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %70

68:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  %69 = call i32 (...) @BUG()
  br label %70

70:                                               ; preds = %68, %67, %45, %22, %20, %18, %16, %14, %12, %10
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @Gi_Source_Select_Bits(i32 %71)
  ret i32 %72
}

declare dso_local i32 @NI_GPCT_RTSI_CLOCK_SRC_BITS(i32) #1

declare dso_local i32 @NI_660x_RTSI_Clock(i32) #1

declare dso_local i32 @NI_GPCT_SOURCE_PIN_CLOCK_SRC_BITS(i32) #1

declare dso_local i32 @NI_660x_Source_Pin_Clock(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @Gi_Source_Select_Bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
