; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_set_second_gate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_660x_set_second_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct = type { i32, %struct.ni_gpct_device* }
%struct.ni_gpct_device = type { i32* }

@ni_660x_set_second_gate.selected_second_gate_mask = internal constant i32 31, align 4
@NI_660x_Next_SRC_Second_Gate_Select = common dso_local global i32 0, align 4
@ni_660x_max_rtsi_channel = common dso_local global i32 0, align 4
@ni_660x_max_up_down_pin = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@Gi_Second_Gate_Mode_Bit = common dso_local global i32 0, align 4
@Gi_Second_Gate_Select_Mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ni_gpct*, i32)* @ni_660x_set_second_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_660x_set_second_gate(%struct.ni_gpct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ni_gpct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ni_gpct_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ni_gpct* %0, %struct.ni_gpct** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %12 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %11, i32 0, i32 1
  %13 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %12, align 8
  store %struct.ni_gpct_device* %13, %struct.ni_gpct_device** %6, align 8
  %14 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %15 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @NITIO_Gi_Second_Gate_Reg(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %26 [
    i32 129, label %21
    i32 128, label %21
    i32 130, label %21
    i32 132, label %21
    i32 133, label %21
    i32 131, label %24
  ]

21:                                               ; preds = %2, %2, %2, %2, %2
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 31
  store i32 %23, i32* %9, align 4
  br label %73

24:                                               ; preds = %2
  %25 = load i32, i32* @NI_660x_Next_SRC_Second_Gate_Select, align 4
  store i32 %25, i32* %9, align 4
  br label %73

26:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @ni_660x_max_rtsi_channel, align 4
  %30 = icmp ule i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @NI_GPCT_RTSI_GATE_SELECT(i32 %33)
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 31
  store i32 %38, i32* %9, align 4
  br label %43

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %10, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %27

43:                                               ; preds = %36, %27
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @ni_660x_max_rtsi_channel, align 4
  %46 = icmp ule i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %73

48:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %62, %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @ni_660x_max_up_down_pin, align 4
  %52 = icmp ule i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @NI_GPCT_UP_DOWN_PIN_GATE_SELECT(i32 %55)
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, 31
  store i32 %60, i32* %9, align 4
  br label %65

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %49

65:                                               ; preds = %58, %49
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @ni_660x_max_up_down_pin, align 4
  %68 = icmp ule i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %113

73:                                               ; preds = %69, %47, %24, %21
  %74 = load i32, i32* @Gi_Second_Gate_Mode_Bit, align 4
  %75 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %6, align 8
  %76 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %74
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* @Gi_Second_Gate_Select_Mask, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %6, align 8
  %86 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %84
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @Gi_Second_Gate_Select_Bits(i32 %93)
  %95 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %6, align 8
  %96 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %94
  store i32 %102, i32* %100, align 4
  %103 = load %struct.ni_gpct*, %struct.ni_gpct** %4, align 8
  %104 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %6, align 8
  %105 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @write_register(%struct.ni_gpct* %103, i32 %110, i32 %111)
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %73, %70
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @NITIO_Gi_Second_Gate_Reg(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @NI_GPCT_RTSI_GATE_SELECT(i32) #1

declare dso_local i32 @NI_GPCT_UP_DOWN_PIN_GATE_SELECT(i32) #1

declare dso_local i32 @Gi_Second_Gate_Select_Bits(i32) #1

declare dso_local i32 @write_register(%struct.ni_gpct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
