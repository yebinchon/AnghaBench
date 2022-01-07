; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_second_gate_to_generic_gate_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_second_gate_to_generic_gate_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NI_GPCT_SOURCE_PIN_i_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_UP_DOWN_PIN_i_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_NEXT_SOURCE_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_NEXT_OUT_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_SELECTED_GATE_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_LOGIC_LOW_GATE_SELECT = common dso_local global i32 0, align 4
@ni_660x_max_rtsi_channel = common dso_local global i32 0, align 4
@ni_660x_max_up_down_pin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ni_660x_second_gate_to_generic_gate_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_660x_second_gate_to_generic_gate_source(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %18 [
    i32 129, label %6
    i32 128, label %8
    i32 131, label %10
    i32 132, label %12
    i32 130, label %14
    i32 133, label %16
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @NI_GPCT_SOURCE_PIN_i_GATE_SELECT, align 4
  store i32 %7, i32* %2, align 4
  br label %65

8:                                                ; preds = %1
  %9 = load i32, i32* @NI_GPCT_UP_DOWN_PIN_i_GATE_SELECT, align 4
  store i32 %9, i32* %2, align 4
  br label %65

10:                                               ; preds = %1
  %11 = load i32, i32* @NI_GPCT_NEXT_SOURCE_GATE_SELECT, align 4
  store i32 %11, i32* %2, align 4
  br label %65

12:                                               ; preds = %1
  %13 = load i32, i32* @NI_GPCT_NEXT_OUT_GATE_SELECT, align 4
  store i32 %13, i32* %2, align 4
  br label %65

14:                                               ; preds = %1
  %15 = load i32, i32* @NI_GPCT_SELECTED_GATE_GATE_SELECT, align 4
  store i32 %15, i32* %2, align 4
  br label %65

16:                                               ; preds = %1
  %17 = load i32, i32* @NI_GPCT_LOGIC_LOW_GATE_SELECT, align 4
  store i32 %17, i32* %2, align 4
  br label %65

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @ni_660x_max_rtsi_channel, align 4
  %22 = icmp ule i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @NI_660x_RTSI_Second_Gate_Select(i32 %25)
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @NI_GPCT_RTSI_GATE_SELECT(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %65

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %19

35:                                               ; preds = %19
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @ni_660x_max_rtsi_channel, align 4
  %38 = icmp ule i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %64

40:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %54, %40
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @ni_660x_max_up_down_pin, align 4
  %44 = icmp ule i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @NI_660x_Up_Down_Pin_Second_Gate_Select(i32 %47)
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @NI_GPCT_UP_DOWN_PIN_GATE_SELECT(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %65

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %41

57:                                               ; preds = %41
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @ni_660x_max_up_down_pin, align 4
  %60 = icmp ule i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %64

62:                                               ; preds = %57
  %63 = call i32 (...) @BUG()
  br label %64

64:                                               ; preds = %62, %61, %39
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %50, %28, %16, %14, %12, %10, %8, %6
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @NI_660x_RTSI_Second_Gate_Select(i32) #1

declare dso_local i32 @NI_GPCT_RTSI_GATE_SELECT(i32) #1

declare dso_local i32 @NI_660x_Up_Down_Pin_Second_Gate_Select(i32) #1

declare dso_local i32 @NI_GPCT_UP_DOWN_PIN_GATE_SELECT(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
