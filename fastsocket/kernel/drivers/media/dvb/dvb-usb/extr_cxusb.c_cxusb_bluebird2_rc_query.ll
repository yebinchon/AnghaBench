; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_bluebird2_rc_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_bluebird2_rc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.dvb_usb_rc_key* }
%struct.dvb_usb_rc_key = type { i32 }
%struct.i2c_msg = type { i32, i64*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@REMOTE_NO_KEY_PRESSED = common dso_local global i32 0, align 4
@REMOTE_KEY_PRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*, i32*)* @cxusb_bluebird2_rc_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_bluebird2_rc_query(%struct.dvb_usb_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dvb_usb_rc_key*, align 8
  %9 = alloca [4 x i64], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %14, align 8
  store %struct.dvb_usb_rc_key* %15, %struct.dvb_usb_rc_key** %8, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  store i32 107, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  %18 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  store i64* %18, i64** %17, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i32 4, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  %21 = load i32, i32* @I2C_M_RD, align 4
  store i32 %21, i32* %20, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %25, i32 0, i32 1
  %27 = call i32 @cxusb_i2c_xfer(i32* %26, %struct.i2c_msg* %11, i32 1)
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %71

30:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %67, %30
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %34 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %31
  %39 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %39, i64 %41
  %43 = call i64 @rc5_custom(%struct.dvb_usb_rc_key* %42)
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %38
  %48 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %48, i64 %50
  %52 = call i64 @rc5_data(%struct.dvb_usb_rc_key* %51)
  %53 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 2
  %54 = load i64, i64* %53, align 16
  %55 = icmp eq i64 %52, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %47
  %57 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %57, i64 %59
  %61 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %6, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @REMOTE_KEY_PRESSED, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  store i32 0, i32* %4, align 4
  br label %71

66:                                               ; preds = %47, %38
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %31

70:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %56, %29
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @cxusb_i2c_xfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i64 @rc5_custom(%struct.dvb_usb_rc_key*) #1

declare dso_local i64 @rc5_data(%struct.dvb_usb_rc_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
