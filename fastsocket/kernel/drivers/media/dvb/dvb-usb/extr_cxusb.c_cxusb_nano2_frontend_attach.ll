; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_nano2_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_nano2_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"set interface failed\00", align 1
@CMD_DIGITAL = common dso_local global i32 0, align 4
@zl10353_attach = common dso_local global i32 0, align 4
@cxusb_zl10353_xc3028_config = common dso_local global i32 0, align 4
@mt352_attach = common dso_local global i32 0, align 4
@cxusb_mt352_xc3028_config = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @cxusb_nano2_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_nano2_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %4 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %5 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @usb_set_interface(i32 %8, i32 0, i32 1)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* @CMD_DIGITAL, align 4
  %18 = call i32 @cxusb_ctrl_msg(%struct.TYPE_4__* %16, i32 %17, i32* null, i32 0, i32* null, i32 0)
  %19 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = call i32 @cxusb_bluebird_gpio_rw(%struct.TYPE_4__* %21, i32 4, i32 0)
  %23 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = call i32 @cxusb_bluebird_gpio_pulse(%struct.TYPE_4__* %25, i32 1, i32 1)
  %27 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call i32 @cxusb_bluebird_gpio_pulse(%struct.TYPE_4__* %29, i32 2, i32 1)
  %31 = load i32, i32* @zl10353_attach, align 4
  %32 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i8* @dvb_attach(i32 %31, i32* @cxusb_zl10353_xc3028_config, i32* %35)
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = icmp ne i32* %37, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %57

42:                                               ; preds = %13
  %43 = load i32, i32* @mt352_attach, align 4
  %44 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i8* @dvb_attach(i32 %43, i32* @cxusb_mt352_xc3028_config, i32* %47)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = icmp ne i32* %49, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %57

54:                                               ; preds = %42
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %53, %41
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @cxusb_ctrl_msg(%struct.TYPE_4__*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @cxusb_bluebird_gpio_rw(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @cxusb_bluebird_gpio_pulse(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @dvb_attach(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
