; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_dib807x_tuner_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_dib807x_tuner_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i64, %struct.TYPE_7__*, %struct.dib0700_adapter_state* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dib0700_adapter_state = type { i32 }
%struct.i2c_adapter = type { i32 }

@DIBX000_I2C_INTERFACE_TUNER = common dso_local global i32 0, align 4
@dib0070_attach = common dso_local global i32 0, align 4
@dib807x_dib0070_config = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@dib807x_set_param_override = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @dib807x_tuner_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib807x_tuner_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dib0700_adapter_state*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %6 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %6, i32 0, i32 2
  %8 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %7, align 8
  store %struct.dib0700_adapter_state* %8, %struct.dib0700_adapter_state** %4, align 8
  %9 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = load i32, i32* @DIBX000_I2C_INTERFACE_TUNER, align 4
  %13 = call %struct.i2c_adapter* @dib8000_get_i2c_master(%struct.TYPE_7__* %11, i32 %12, i32 1)
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %5, align 8
  %14 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load i32, i32* @dib0070_attach, align 4
  %20 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %24 = load i32*, i32** @dib807x_dib0070_config, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = call i32* @dvb_attach(i32 %19, %struct.TYPE_7__* %22, %struct.i2c_adapter* %23, i32* %25)
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %63

31:                                               ; preds = %18
  br label %46

32:                                               ; preds = %1
  %33 = load i32, i32* @dib0070_attach, align 4
  %34 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %38 = load i32*, i32** @dib807x_dib0070_config, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = call i32* @dvb_attach(i32 %33, %struct.TYPE_7__* %36, %struct.i2c_adapter* %37, i32* %39)
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %63

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %31
  %47 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %55 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @dib807x_set_param_override, align 4
  %57 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %56, i32* %62, align 4
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %46, %42, %28
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.i2c_adapter* @dib8000_get_i2c_master(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32* @dvb_attach(i32, %struct.TYPE_7__*, %struct.i2c_adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
