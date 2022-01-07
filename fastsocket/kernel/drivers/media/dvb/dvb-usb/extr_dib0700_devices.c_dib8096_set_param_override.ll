; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_dib8096_set_param_override.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_dib8096_set_param_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dvb_usb_adapter* }
%struct.dvb_usb_adapter = type { %struct.dib0700_adapter_state* }
%struct.dib0700_adapter_state = type { {}* }
%struct.dvb_frontend_parameters = type { i32 }

@CT_SHUTDOWN = common dso_local global i32 0, align 4
@BAND_CBAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"tuning in CBAND - soft-AGC startup\0A\00", align 1
@CT_AGC_START = common dso_local global i32 0, align 4
@CT_AGC_STEP_0 = common dso_local global i32 0, align 4
@CT_AGC_STEP_1 = common dso_local global i32 0, align 4
@CT_AGC_STOP = common dso_local global i32 0, align 4
@CT_DEMOD_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"not tuning in CBAND - standard AGC startup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib8096_set_param_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8096_set_param_override(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.dvb_usb_adapter*, align 8
  %7 = alloca %struct.dib0700_adapter_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %17, align 8
  store %struct.dvb_usb_adapter* %18, %struct.dvb_usb_adapter** %6, align 8
  %19 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %19, i32 0, i32 0
  %21 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %20, align 8
  store %struct.dib0700_adapter_state* %21, %struct.dib0700_adapter_state** %7, align 8
  %22 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 1000
  %26 = call i32 @BAND_OF_FREQUENCY(i32 %25)
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %27 = load i32, i32* @CT_SHUTDOWN, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %7, align 8
  %29 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)**
  %31 = load i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)** %30, align 8
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %33 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %34 = call i32 %31(%struct.dvb_frontend* %32, %struct.dvb_frontend_parameters* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %3, align 4
  br label %110

39:                                               ; preds = %2
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %43 [
    i32 128, label %41
    i32 129, label %42
  ]

41:                                               ; preds = %39
  store i32 100, i32* %9, align 4
  br label %44

42:                                               ; preds = %39
  store i32 550, i32* %9, align 4
  br label %44

43:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %42, %41
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %46 = call i32 @dib0090_get_wbd_offset(%struct.dvb_frontend* %45)
  %47 = mul nsw i32 %46, 8
  %48 = mul nsw i32 %47, 18
  %49 = sdiv i32 %48, 33
  %50 = add nsw i32 %49, 1
  %51 = sdiv i32 %50, 2
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @dib8000_set_wbd_ref(%struct.dvb_frontend* %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @BAND_CBAND, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %105

60:                                               ; preds = %44
  %61 = call i32 @deb_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %63 = load i32, i32* @CT_AGC_START, align 4
  %64 = call i32 @dib0090_set_tune_state(%struct.dvb_frontend* %62, i32 %63)
  br label %65

65:                                               ; preds = %93, %60
  %66 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %67 = call i32 @dib0090_gain_control(%struct.dvb_frontend* %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @msleep(i32 %68)
  %70 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %71 = call i32 @dib0090_get_tune_state(%struct.dvb_frontend* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @CT_AGC_STEP_0, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %77 = call i32 @dib8000_set_gpio(%struct.dvb_frontend* %76, i32 6, i32 0, i32 1)
  br label %92

78:                                               ; preds = %65
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @CT_AGC_STEP_1, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %84 = call i32 @dib0090_get_current_gain(%struct.dvb_frontend* %83, i32* null, i32* null, i32* %13, i32* %12)
  %85 = load i32, i32* %13, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %89 = call i32 @dib8000_set_gpio(%struct.dvb_frontend* %88, i32 6, i32 0, i32 0)
  br label %90

90:                                               ; preds = %87, %82
  br label %91

91:                                               ; preds = %90, %78
  br label %92

92:                                               ; preds = %91, %75
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @CT_AGC_STOP, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %65, label %97

97:                                               ; preds = %93
  %98 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %99 = call i32 @dib0090_pwm_gain_reset(%struct.dvb_frontend* %98)
  %100 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %101 = call i32 @dib8000_pwm_agc_reset(%struct.dvb_frontend* %100)
  %102 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %103 = load i32, i32* @CT_DEMOD_START, align 4
  %104 = call i32 @dib8000_set_tune_state(%struct.dvb_frontend* %102, i32 %103)
  br label %109

105:                                              ; preds = %44
  %106 = call i32 @deb_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %107 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %108 = call i32 @dib0090_pwm_gain_reset(%struct.dvb_frontend* %107)
  br label %109

109:                                              ; preds = %105, %97
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %37
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @BAND_OF_FREQUENCY(i32) #1

declare dso_local i32 @dib0090_get_wbd_offset(%struct.dvb_frontend*) #1

declare dso_local i32 @dib8000_set_wbd_ref(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @deb_info(i8*) #1

declare dso_local i32 @dib0090_set_tune_state(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @dib0090_gain_control(%struct.dvb_frontend*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib0090_get_tune_state(%struct.dvb_frontend*) #1

declare dso_local i32 @dib8000_set_gpio(%struct.dvb_frontend*, i32, i32, i32) #1

declare dso_local i32 @dib0090_get_current_gain(%struct.dvb_frontend*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dib0090_pwm_gain_reset(%struct.dvb_frontend*) #1

declare dso_local i32 @dib8000_pwm_agc_reset(%struct.dvb_frontend*) #1

declare dso_local i32 @dib8000_set_tune_state(%struct.dvb_frontend*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
