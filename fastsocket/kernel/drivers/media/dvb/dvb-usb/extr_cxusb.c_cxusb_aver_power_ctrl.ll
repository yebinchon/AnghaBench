; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_aver_power_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cxusb.c_cxusb_aver_power_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i64, i32 }

@CMD_POWER_OFF = common dso_local global i32 0, align 4
@DVB_USB_STATE_INIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"set interface failed\00", align 1
@CMD_POWER_ON = common dso_local global i32 0, align 4
@__const.cxusb_aver_power_ctrl.bufs = private unnamed_addr constant [40 x i32] [i32 14, i32 2, i32 0, i32 127, i32 14, i32 2, i32 2, i32 254, i32 14, i32 2, i32 2, i32 1, i32 14, i32 2, i32 0, i32 3, i32 14, i32 2, i32 13, i32 64, i32 14, i32 2, i32 14, i32 135, i32 14, i32 2, i32 15, i32 142, i32 14, i32 2, i32 16, i32 1, i32 14, i32 2, i32 20, i32 215, i32 14, i32 2, i32 71, i32 136], align 16
@CMD_I2C_WRITE = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32)* @cxusb_aver_power_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_aver_power_ctrl(%struct.dvb_usb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [40 x i32], align 16
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %14 = load i32, i32* @CMD_POWER_OFF, align 4
  %15 = call i32 @cxusb_ctrl_msg(%struct.dvb_usb_device* %13, i32 %14, i32* null, i32 0, i32* null, i32 0)
  store i32 %15, i32* %3, align 4
  br label %84

16:                                               ; preds = %2
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DVB_USB_STATE_INIT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @usb_set_interface(i32 %25, i32 0, i32 0)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %22, %16
  br label %31

31:                                               ; preds = %46, %30
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %34 = load i32, i32* @CMD_POWER_ON, align 4
  %35 = call i32 @cxusb_ctrl_msg(%struct.dvb_usb_device* %33, i32 %34, i32* null, i32 0, i32* null, i32 0)
  store i32 %35, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %39 = call i32 @cxusb_ctrl_msg(%struct.dvb_usb_device* %38, i32 21, i32* null, i32 0, i32* null, i32 0)
  store i32 %39, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %43 = call i32 @cxusb_ctrl_msg(%struct.dvb_usb_device* %42, i32 23, i32* null, i32 0, i32* null, i32 0)
  store i32 %43, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %41, %37, %32
  %47 = phi i1 [ false, %41 ], [ false, %37 ], [ false, %32 ], [ false, %45 ]
  br i1 %47, label %31, label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %82, label %51

51:                                               ; preds = %48
  %52 = bitcast [40 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %52, i8* align 16 bitcast ([40 x i32]* @__const.cxusb_aver_power_ctrl.bufs to i8*), i64 160, i1 false)
  %53 = call i32 @msleep(i32 20)
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %76, %51
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %56, 40
  br i1 %57, label %58, label %81

58:                                               ; preds = %54
  %59 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %60 = load i32, i32* @CMD_I2C_WRITE, align 4
  %61 = getelementptr inbounds [40 x i32], [40 x i32]* %9, i64 0, i64 0
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i32 @cxusb_ctrl_msg(%struct.dvb_usb_device* %59, i32 %60, i32* %64, i32 4, i32* %8, i32 1)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %81

69:                                               ; preds = %58
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 8
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* @EREMOTEIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %84

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %78, 1
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %7, align 4
  br label %54

81:                                               ; preds = %68, %54
  br label %82

82:                                               ; preds = %81, %48
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %72, %12
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @cxusb_ctrl_msg(%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i64 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @err(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
