; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_rc_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_rc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.dvb_usb_rc_key* }
%struct.dvb_usb_rc_key = type { i32 }

@CMD_GET_IR_CODE = common dso_local global i32 0, align 4
@REMOTE_NO_KEY_PRESSED = common dso_local global i32 0, align 4
@REMOTE_KEY_PRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*, i32*)* @cxusb_rc_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_rc_query(%struct.dvb_usb_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dvb_usb_rc_key*, align 8
  %9 = alloca [4 x i64], align 16
  %10 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %13, align 8
  store %struct.dvb_usb_rc_key* %14, %struct.dvb_usb_rc_key** %8, align 8
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %16 = load i32, i32* @CMD_GET_IR_CODE, align 4
  %17 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  %18 = call i32 @cxusb_ctrl_msg(%struct.dvb_usb_device* %15, i32 %16, i32* null, i32 0, i64* %17, i32 4)
  %19 = load i32*, i32** %6, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %58, %3
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %25 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %22
  %30 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %30, i64 %32
  %34 = call i64 @rc5_custom(%struct.dvb_usb_rc_key* %33)
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 2
  %36 = load i64, i64* %35, align 16
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %29
  %39 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %39, i64 %41
  %43 = call i64 @rc5_data(%struct.dvb_usb_rc_key* %42)
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %48, i64 %50
  %52 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @REMOTE_KEY_PRESSED, align 4
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  store i32 0, i32* %4, align 4
  br label %62

57:                                               ; preds = %38, %29
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %22

61:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %47
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @cxusb_ctrl_msg(%struct.dvb_usb_device*, i32, i32*, i32, i64*, i32) #1

declare dso_local i64 @rc5_custom(%struct.dvb_usb_rc_key*) #1

declare dso_local i64 @rc5_data(%struct.dvb_usb_rc_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
