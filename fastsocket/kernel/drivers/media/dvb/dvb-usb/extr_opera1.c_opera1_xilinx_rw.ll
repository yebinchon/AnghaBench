; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_opera1.c_opera1_xilinx_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_opera1.c_opera1_xilinx_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@OPERA_READ_MSG = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@OPERA_WRITE_MSG = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@OPERA_TUNER_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i32, i32*, i32, i32)* @opera1_xilinx_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opera1_xilinx_rw(%struct.usb_device* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* %12, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %16, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %17, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @OPERA_READ_MSG, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %30 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %29, i32 0)
  br label %34

31:                                               ; preds = %6
  %32 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %33 = call i32 @usb_sndctrlpipe(%struct.usb_device* %32, i32 0)
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i32 [ %30, %28 ], [ %33, %31 ]
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @OPERA_READ_MSG, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @USB_DIR_IN, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @USB_DIR_OUT, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %19, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @OPERA_WRITE_MSG, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @memcpy(i32* %24, i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @usb_control_msg(%struct.usb_device* %53, i32 %54, i32 %55, i32 %58, i32 %59, i32 0, i32* %24, i32 %60, i32 2000)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @OPERA_TUNER_REQ, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %52
  %66 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %67 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %68 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %67, i32 0)
  %69 = load i32, i32* @OPERA_TUNER_REQ, align 4
  %70 = load i32, i32* @USB_DIR_IN, align 4
  %71 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @usb_control_msg(%struct.usb_device* %66, i32 %68, i32 %69, i32 %72, i32 1, i32 0, i32* %15, i32 1, i32 2000)
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %78, label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 8
  br i1 %77, label %78, label %79

78:                                               ; preds = %75, %65
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %90

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79, %52
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @OPERA_READ_MSG, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @memcpy(i32* %85, i32* %24, i32 %86)
  br label %88

88:                                               ; preds = %84, %80
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %90

90:                                               ; preds = %88, %78
  %91 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #2

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
