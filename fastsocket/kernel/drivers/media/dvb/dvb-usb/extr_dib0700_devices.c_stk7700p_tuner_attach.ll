; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_stk7700p_tuner_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_stk7700p_tuner_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.dib0700_state*, %struct.i2c_adapter }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.dib0700_state = type { i64 }
%struct.i2c_adapter = type { i32 }

@USB_VID_HAUPPAUGE = common dso_local global i32 0, align 4
@USB_PID_HAUPPAUGE_NOVA_T_STICK = common dso_local global i32 0, align 4
@DIBX000_I2C_INTERFACE_TUNER = common dso_local global i32 0, align 4
@mt2060_attach = common dso_local global i32 0, align 4
@stk7700p_mt2060_config = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @stk7700p_tuner_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk7700p_tuner_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.dib0700_state*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %8 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %3, align 8
  %12 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.dib0700_state*, %struct.dib0700_state** %15, align 8
  store %struct.dib0700_state* %16, %struct.dib0700_state** %4, align 8
  store i32 1220, i32* %7, align 4
  %17 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @USB_VID_HAUPPAUGE, align 4
  %26 = call i64 @cpu_to_le16(i32 %25)
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %1
  %29 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @USB_PID_HAUPPAUGE_NOVA_T_STICK, align 4
  %38 = call i64 @cpu_to_le16(i32 %37)
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %28
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %42 = call i32 @eeprom_read(%struct.i2c_adapter* %41, i32 88, i32* %6)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 1220, %45
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %44, %40
  br label %48

48:                                               ; preds = %47, %28, %1
  %49 = load %struct.dib0700_state*, %struct.dib0700_state** %4, align 8
  %50 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DIBX000_I2C_INTERFACE_TUNER, align 4
  %58 = call %struct.i2c_adapter* @dib7000p_get_i2c_master(i32 %56, i32 %57, i32 1)
  store %struct.i2c_adapter* %58, %struct.i2c_adapter** %5, align 8
  br label %65

59:                                               ; preds = %48
  %60 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @DIBX000_I2C_INTERFACE_TUNER, align 4
  %64 = call %struct.i2c_adapter* @dib7000m_get_i2c_master(i32 %62, i32 %63, i32 1)
  store %struct.i2c_adapter* %64, %struct.i2c_adapter** %5, align 8
  br label %65

65:                                               ; preds = %59, %53
  %66 = load i32, i32* @mt2060_attach, align 4
  %67 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32* @dvb_attach(i32 %66, i32 %69, %struct.i2c_adapter* %70, i32* @stk7700p_mt2060_config, i32 %71)
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  br label %78

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %74
  %79 = phi i32 [ %76, %74 ], [ 0, %77 ]
  ret i32 %79
}

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @eeprom_read(%struct.i2c_adapter*, i32, i32*) #1

declare dso_local %struct.i2c_adapter* @dib7000p_get_i2c_master(i32, i32, i32) #1

declare dso_local %struct.i2c_adapter* @dib7000m_get_i2c_master(i32, i32, i32) #1

declare dso_local i32* @dvb_attach(i32, i32, %struct.i2c_adapter*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
