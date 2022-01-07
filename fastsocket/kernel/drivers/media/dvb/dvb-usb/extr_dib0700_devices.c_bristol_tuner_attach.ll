; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_bristol_tuner_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_bristol_tuner_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.i2c_adapter }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.i2c_adapter = type { i32 }

@USB_VID_HAUPPAUGE = common dso_local global i32 0, align 4
@USB_PID_HAUPPAUGE_NOVA_T_500_2 = common dso_local global i32 0, align 4
@mt2060_attach = common dso_local global i32 0, align 4
@bristol_mt2060_config = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @bristol_tuner_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bristol_tuner_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %7 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store %struct.i2c_adapter* %10, %struct.i2c_adapter** %3, align 8
  %11 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.i2c_adapter* @dib3000mc_get_tuner_i2c_master(i32 %13, i32 1)
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %4, align 8
  store i32 1220, i32* %6, align 4
  %15 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @USB_VID_HAUPPAUGE, align 4
  %24 = call i64 @cpu_to_le16(i32 %23)
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %1
  %27 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @USB_PID_HAUPPAUGE_NOVA_T_500_2, align 4
  %36 = call i64 @cpu_to_le16(i32 %35)
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %26
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %40 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 89, %42
  %44 = call i32 @eeprom_read(%struct.i2c_adapter* %39, i64 %43, i32* %5)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 1220, %47
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %46, %38
  br label %50

50:                                               ; preds = %49, %26, %1
  %51 = load i32, i32* @mt2060_attach, align 4
  %52 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %56 = load i32*, i32** @bristol_mt2060_config, align 8
  %57 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %6, align 4
  %62 = call i32* @dvb_attach(i32 %51, i32 %54, %struct.i2c_adapter* %55, i32* %60, i32 %61)
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  br label %68

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i32 [ %66, %64 ], [ 0, %67 ]
  ret i32 %69
}

declare dso_local %struct.i2c_adapter* @dib3000mc_get_tuner_i2c_master(i32, i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @eeprom_read(%struct.i2c_adapter*, i64, i32*) #1

declare dso_local i32* @dvb_attach(i32, i32, %struct.i2c_adapter*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
