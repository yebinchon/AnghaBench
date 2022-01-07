; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-init.c_dvb_usb_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-init.c_dvb_usb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32*, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@DVB_USB_STATE_INIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"no memory for priv in 'struct dvb_usb_device'\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"could not initialize remote control.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i16*)* @dvb_usb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_usb_init(%struct.dvb_usb_device* %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i16* %1, i16** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %8 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %7, i32 0, i32 4
  %9 = call i32 @mutex_init(i32* %8)
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %10, i32 0, i32 3
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load i32, i32* @DVB_USB_STATE_INIT, align 4
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %2
  %22 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @kzalloc(i64 %25, i32 %26)
  %28 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %29 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %31 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = call i32 @err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %63

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %41 = call i32 @dvb_usb_device_power_ctrl(%struct.dvb_usb_device* %40, i32 1)
  %42 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %43 = call i32 @dvb_usb_i2c_init(%struct.dvb_usb_device* %42)
  store i32 %43, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %47 = load i16*, i16** %5, align 8
  %48 = call i32 @dvb_usb_adapter_init(%struct.dvb_usb_device* %46, i16* %47)
  store i32 %48, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45, %39
  %51 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %52 = call i32 @dvb_usb_exit(%struct.dvb_usb_device* %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %63

54:                                               ; preds = %45
  %55 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %56 = call i32 @dvb_usb_remote_init(%struct.dvb_usb_device* %55)
  store i32 %56, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %54
  %61 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %62 = call i32 @dvb_usb_device_power_ctrl(%struct.dvb_usb_device* %61, i32 0)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %50, %34
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @dvb_usb_device_power_ctrl(%struct.dvb_usb_device*, i32) #1

declare dso_local i32 @dvb_usb_i2c_init(%struct.dvb_usb_device*) #1

declare dso_local i32 @dvb_usb_adapter_init(%struct.dvb_usb_device*, i16*) #1

declare dso_local i32 @dvb_usb_exit(%struct.dvb_usb_device*) #1

declare dso_local i32 @dvb_usb_remote_init(%struct.dvb_usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
