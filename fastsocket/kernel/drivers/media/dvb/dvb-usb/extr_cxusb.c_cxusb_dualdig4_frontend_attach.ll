; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_dualdig4_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_dualdig4_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"set interface failed\00", align 1
@CMD_DIGITAL = common dso_local global i32 0, align 4
@zl10353_attach = common dso_local global i32 0, align 4
@cxusb_zl10353_xc3028_config_no_i2c_gate = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"No IR receiver detected on this device.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @cxusb_dualdig4_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_dualdig4_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 0
  store i32 107, i32* %7, align 8
  %8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 1
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  store i32* %9, i32** %8, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 2
  store i32 4, i32* %10, align 8
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 3
  %12 = load i32, i32* @I2C_M_RD, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @usb_set_interface(i32 %17, i32 0, i32 1)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %1
  %23 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* @CMD_DIGITAL, align 4
  %27 = call i32 @cxusb_ctrl_msg(%struct.TYPE_6__* %25, i32 %26, i32* null, i32 0, i32* null, i32 0)
  %28 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = call i32 @cxusb_bluebird_gpio_rw(%struct.TYPE_6__* %30, i32 4, i32 0)
  %32 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = call i32 @cxusb_bluebird_gpio_pulse(%struct.TYPE_6__* %34, i32 1, i32 1)
  %36 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call i32 @cxusb_bluebird_gpio_pulse(%struct.TYPE_6__* %38, i32 2, i32 1)
  %40 = load i32, i32* @zl10353_attach, align 4
  %41 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = call i32* @dvb_attach(i32 %40, i32* @cxusb_zl10353_xc3028_config_no_i2c_gate, i32* %44)
  %46 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = icmp eq i32* %45, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %22
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %104

52:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %100, %52
  %54 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 5
  br label %64

64:                                               ; preds = %61, %53
  %65 = phi i1 [ false, %53 ], [ %63, %61 ]
  br i1 %65, label %66, label %103

66:                                               ; preds = %64
  %67 = call i32 @msleep(i32 20)
  %68 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = call i32 @cxusb_i2c_xfer(i32* %71, %struct.i2c_msg* %6, i32 1)
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %92

75:                                               ; preds = %66
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %100

84:                                               ; preds = %79, %75
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %86, %88
  %90 = icmp ne i32 %89, 255
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %74
  %93 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32* null, i32** %97, align 8
  %98 = call i32 @info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %103

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %99, %83
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %53

103:                                              ; preds = %92, %64
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %49
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i64 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @cxusb_ctrl_msg(%struct.TYPE_6__*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @cxusb_bluebird_gpio_rw(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @cxusb_bluebird_gpio_pulse(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32* @dvb_attach(i32, i32*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cxusb_i2c_xfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
