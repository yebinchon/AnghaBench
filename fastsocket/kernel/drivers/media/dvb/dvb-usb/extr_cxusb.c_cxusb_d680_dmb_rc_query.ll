; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_d680_dmb_rc_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_d680_dmb_rc_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.dvb_usb_rc_key* }
%struct.dvb_usb_rc_key = type { i32 }

@REMOTE_NO_KEY_PRESSED = common dso_local global i32 0, align 4
@REMOTE_KEY_PRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*, i32*)* @cxusb_d680_dmb_rc_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_d680_dmb_rc_query(%struct.dvb_usb_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dvb_usb_rc_key*, align 8
  %9 = alloca [2 x i64], align 16
  %10 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %13, align 8
  store %struct.dvb_usb_rc_key* %14, %struct.dvb_usb_rc_key** %8, align 8
  %15 = load i32*, i32** %6, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %20 = call i64 @cxusb_ctrl_msg(%struct.dvb_usb_device* %18, i32 16, i32* null, i32 0, i64* %19, i32 2)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

23:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %60, %23
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %27 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %63

31:                                               ; preds = %24
  %32 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %32, i64 %34
  %36 = call i64 @rc5_custom(%struct.dvb_usb_rc_key* %35)
  %37 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %38 = load i64, i64* %37, align 16
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %31
  %41 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %41, i64 %43
  %45 = call i64 @rc5_data(%struct.dvb_usb_rc_key* %44)
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %40
  %50 = load %struct.dvb_usb_rc_key*, %struct.dvb_usb_rc_key** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %50, i64 %52
  %54 = getelementptr inbounds %struct.dvb_usb_rc_key, %struct.dvb_usb_rc_key* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @REMOTE_KEY_PRESSED, align 4
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  store i32 0, i32* %4, align 4
  br label %64

59:                                               ; preds = %40, %31
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %24

63:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %49, %22
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @cxusb_ctrl_msg(%struct.dvb_usb_device*, i32, i32*, i32, i64*, i32) #1

declare dso_local i64 @rc5_custom(%struct.dvb_usb_rc_key*) #1

declare dso_local i64 @rc5_data(%struct.dvb_usb_rc_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
