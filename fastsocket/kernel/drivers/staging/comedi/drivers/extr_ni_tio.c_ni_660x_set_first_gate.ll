; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_set_first_gate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_set_first_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32 }

@NI_660x_Next_SRC_Gate_Select = common dso_local global i32 0, align 4
@ni_660x_max_rtsi_channel = common dso_local global i32 0, align 4
@ni_660x_max_gate_pin = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@Gi_Gate_Select_Mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*, i32)* @ni_660x_set_first_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_660x_set_first_gate(%struct.ni_gpct* %0, i32 %1) #0 {
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
  switch i32 %12, label %18 [
    i32 129, label %13
    i32 130, label %15
    i32 131, label %15
    i32 128, label %15
    i32 132, label %15
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @NI_660x_Next_SRC_Gate_Select, align 4
  store i32 %14, i32* %8, align 4
  br label %65

15:                                               ; preds = %2, %2, %2, %2
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 31
  store i32 %17, i32* %8, align 4
  br label %65

18:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @ni_660x_max_rtsi_channel, align 4
  %22 = icmp ule i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @NI_GPCT_RTSI_GATE_SELECT(i32 %25)
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 31
  store i32 %30, i32* %8, align 4
  br label %35

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %9, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %19

35:                                               ; preds = %28, %19
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @ni_660x_max_rtsi_channel, align 4
  %38 = icmp ule i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %65

40:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %54, %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @ni_660x_max_gate_pin, align 4
  %44 = icmp ule i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @NI_GPCT_GATE_PIN_GATE_SELECT(i32 %47)
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 31
  store i32 %52, i32* %8, align 4
  br label %57

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %41

57:                                               ; preds = %50, %41
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @ni_660x_max_gate_pin, align 4
  %60 = icmp ule i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %75

65:                                               ; preds = %61, %39, %15, %13
  %66 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %67 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %68 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @NITIO_Gi_Input_Select_Reg(i32 %69)
  %71 = load i32, i32* @Gi_Gate_Select_Mask, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @Gi_Gate_Select_Bits(i32 %72)
  %74 = call i32 @ni_tio_set_bits(%struct.ni_gpct* %66, i32 %70, i32 %71, i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %65, %62
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @NI_GPCT_RTSI_GATE_SELECT(i32) #1

declare dso_local i32 @NI_GPCT_GATE_PIN_GATE_SELECT(i32) #1

declare dso_local i32 @ni_tio_set_bits(%struct.ni_gpct*, i32, i32, i32) #1

declare dso_local i32 @NITIO_Gi_Input_Select_Reg(i32) #1

declare dso_local i32 @Gi_Gate_Select_Bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
