; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_ctrl_rd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_ctrl_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"tx buffer length is smaller than 2. Makes no sense.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"tx buffer length is larger than 4. Not supported.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c">>> \00", align 1
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"ep 0 read error (status = %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"<<< \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib0700_ctrl_rd(%struct.dvb_usb_device* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_usb_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = call i32 @err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %89

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 4
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = call i32 @err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %89

28:                                               ; preds = %21
  %29 = call i32 @deb_data(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @debug_dump(i32* %30, i32 %31, i32 (i8*)* @deb_data)
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 2
  %35 = shl i32 %34, 8
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  store i32 %39, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp sgt i32 %40, 2
  br i1 %41, label %42, label %49

42:                                               ; preds = %28
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 8
  %47 = load i32, i32* %12, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %42, %28
  %50 = load i32, i32* %9, align 4
  %51 = icmp sgt i32 %50, 3
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %12, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %52, %49
  %59 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %60 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %63 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @usb_rcvctrlpipe(i32 %64, i32 0)
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %70 = load i32, i32* @USB_DIR_IN, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %77 = call i32 @usb_control_msg(i32 %61, i32 %65, i32 %68, i32 %71, i32 %72, i32 %73, i32* %74, i32 %75, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %58
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @deb_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %80, %58
  %84 = call i32 @deb_data(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @debug_dump(i32* %85, i32 %86, i32 (i8*)* @deb_data)
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %83, %24, %17
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @deb_data(i8*) #1

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*)*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @deb_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
