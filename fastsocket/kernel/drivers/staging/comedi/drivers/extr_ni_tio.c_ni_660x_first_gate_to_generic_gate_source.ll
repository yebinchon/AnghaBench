; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_first_gate_to_generic_gate_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_first_gate_to_generic_gate_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NI_GPCT_SOURCE_PIN_i_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_GATE_PIN_i_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_NEXT_SOURCE_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_NEXT_OUT_GATE_SELECT = common dso_local global i32 0, align 4
@NI_GPCT_LOGIC_LOW_GATE_SELECT = common dso_local global i32 0, align 4
@ni_660x_max_rtsi_channel = common dso_local global i32 0, align 4
@ni_660x_max_gate_pin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ni_660x_first_gate_to_generic_gate_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_660x_first_gate_to_generic_gate_source(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %16 [
    i32 128, label %6
    i32 132, label %8
    i32 129, label %10
    i32 130, label %12
    i32 131, label %14
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @NI_GPCT_SOURCE_PIN_i_GATE_SELECT, align 4
  store i32 %7, i32* %2, align 4
  br label %63

8:                                                ; preds = %1
  %9 = load i32, i32* @NI_GPCT_GATE_PIN_i_GATE_SELECT, align 4
  store i32 %9, i32* %2, align 4
  br label %63

10:                                               ; preds = %1
  %11 = load i32, i32* @NI_GPCT_NEXT_SOURCE_GATE_SELECT, align 4
  store i32 %11, i32* %2, align 4
  br label %63

12:                                               ; preds = %1
  %13 = load i32, i32* @NI_GPCT_NEXT_OUT_GATE_SELECT, align 4
  store i32 %13, i32* %2, align 4
  br label %63

14:                                               ; preds = %1
  %15 = load i32, i32* @NI_GPCT_LOGIC_LOW_GATE_SELECT, align 4
  store i32 %15, i32* %2, align 4
  br label %63

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %30, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @ni_660x_max_rtsi_channel, align 4
  %20 = icmp ule i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @NI_660x_RTSI_Gate_Select(i32 %23)
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @NI_GPCT_RTSI_GATE_SELECT(i32 %27)
  store i32 %28, i32* %2, align 4
  br label %63

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %17

33:                                               ; preds = %17
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @ni_660x_max_rtsi_channel, align 4
  %36 = icmp ule i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %62

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %52, %38
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @ni_660x_max_gate_pin, align 4
  %42 = icmp ule i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @NI_660x_Gate_Pin_Gate_Select(i32 %45)
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @NI_GPCT_GATE_PIN_GATE_SELECT(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %63

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %39

55:                                               ; preds = %39
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @ni_660x_max_gate_pin, align 4
  %58 = icmp ule i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %62

60:                                               ; preds = %55
  %61 = call i32 (...) @BUG()
  br label %62

62:                                               ; preds = %60, %59, %37
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %48, %26, %14, %12, %10, %8, %6
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @NI_660x_RTSI_Gate_Select(i32) #1

declare dso_local i32 @NI_GPCT_RTSI_GATE_SELECT(i32) #1

declare dso_local i32 @NI_660x_Gate_Pin_Gate_Select(i32) #1

declare dso_local i32 @NI_GPCT_GATE_PIN_GATE_SELECT(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
