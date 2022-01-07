; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dibusb-common.c_dibusb2_0_streaming_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dibusb-common.c_dibusb2_0_streaming_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32 }

@DIBUSB_REQ_SET_STREAMING_MODE = common dso_local global i32 0, align 4
@DIBUSB_REQ_SET_IOCTL = common dso_local global i32 0, align 4
@DIBUSB_IOCTL_CMD_ENABLE_STREAM = common dso_local global i32 0, align 4
@DIBUSB_IOCTL_CMD_DISABLE_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dibusb2_0_streaming_ctrl(%struct.dvb_usb_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 12, i1 false)
  %9 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @dibusb_streaming_ctrl(%struct.dvb_usb_adapter* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %48

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i32, i32* @DIBUSB_REQ_SET_STREAMING_MODE, align 4
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %26 = call i32 @dvb_usb_generic_write(i32 %24, i32* %25, i32 2)
  store i32 %26, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %48

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30, %15
  %32 = load i32, i32* @DIBUSB_REQ_SET_IOCTL, align 4
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @DIBUSB_IOCTL_CMD_ENABLE_STREAM, align 4
  br label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @DIBUSB_IOCTL_CMD_DISABLE_STREAM, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %47 = call i32 @dvb_usb_generic_write(i32 %45, i32* %46, i32 3)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %40, %28, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dibusb_streaming_ctrl(%struct.dvb_usb_adapter*, i32) #2

declare dso_local i32 @dvb_usb_generic_write(i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
