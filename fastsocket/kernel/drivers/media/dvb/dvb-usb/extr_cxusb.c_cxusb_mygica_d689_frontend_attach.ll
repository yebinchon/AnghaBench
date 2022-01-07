; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_mygica_d689_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_mygica_d689_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32*, %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"set interface failed\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"clear tuner gpio failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"set tuner gpio failed\00", align 1
@atbm8830_attach = common dso_local global i32 0, align 4
@mygica_d689_atbm8830_cfg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @cxusb_mygica_d689_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_mygica_d689_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %5 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %5, i32 0, i32 1
  %7 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  store %struct.dvb_usb_device* %7, %struct.dvb_usb_device** %4, align 8
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @usb_set_interface(i32 %10, i32 0, i32 0)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @usb_sndbulkpipe(i32 %21, i32 %25)
  %27 = call i32 @usb_clear_halt(i32 %18, i32 %26)
  %28 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %29 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %32 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %35 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @usb_rcvbulkpipe(i32 %33, i32 %37)
  %39 = call i32 @usb_clear_halt(i32 %30, i32 %38)
  %40 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %41 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %44 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %47 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @usb_rcvbulkpipe(i32 %45, i32 %53)
  %55 = call i32 @usb_clear_halt(i32 %42, i32 %54)
  %56 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %57 = call i64 @cxusb_d680_dmb_gpio_tuner(%struct.dvb_usb_device* %56, i32 7, i32 0)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %15
  %60 = call i32 @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %88

63:                                               ; preds = %15
  %64 = call i32 @msleep(i32 100)
  %65 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %66 = call i64 @cxusb_d680_dmb_gpio_tuner(%struct.dvb_usb_device* %65, i32 7, i32 1)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = call i32 @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %88

72:                                               ; preds = %63
  %73 = call i32 @msleep(i32 100)
  %74 = load i32, i32* @atbm8830_attach, align 4
  %75 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %76 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %75, i32 0, i32 0
  %77 = call i32* @dvb_attach(i32 %74, i32* @mygica_d689_atbm8830_cfg, i32* %76)
  %78 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %72
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %88

87:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %84, %68, %59
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i64 @cxusb_d680_dmb_gpio_tuner(%struct.dvb_usb_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32* @dvb_attach(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
