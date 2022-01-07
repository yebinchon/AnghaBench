; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_bcm5974.c_bcm5974_wellspring_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_bcm5974.c_bcm5974_wellspring_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm5974 = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"bcm5974: out of memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BCM5974_WELLSPRING_MODE_READ_REQUEST_ID = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@BCM5974_WELLSPRING_MODE_REQUEST_VALUE = common dso_local global i32 0, align 4
@BCM5974_WELLSPRING_MODE_REQUEST_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"bcm5974: could not read from device\00", align 1
@EIO = common dso_local global i32 0, align 4
@BCM5974_WELLSPRING_MODE_VENDOR_VALUE = common dso_local global i8 0, align 1
@BCM5974_WELLSPRING_MODE_NORMAL_VALUE = common dso_local global i8 0, align 1
@BCM5974_WELLSPRING_MODE_WRITE_REQUEST_ID = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"bcm5974: could not write to device\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"bcm5974: switched to %s mode.\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"wellspring\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm5974*, i32)* @bcm5974_wellspring_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm5974_wellspring_mode(%struct.bcm5974* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm5974*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bcm5974* %0, %struct.bcm5974** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kmalloc(i32 8, i32 %8)
  store i8* %9, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = call i32 @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  br label %83

16:                                               ; preds = %2
  %17 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %18 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %21 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usb_rcvctrlpipe(i32 %22, i32 0)
  %24 = load i32, i32* @BCM5974_WELLSPRING_MODE_READ_REQUEST_ID, align 4
  %25 = load i32, i32* @USB_DIR_IN, align 4
  %26 = load i32, i32* @USB_TYPE_CLASS, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @BCM5974_WELLSPRING_MODE_REQUEST_VALUE, align 4
  %31 = load i32, i32* @BCM5974_WELLSPRING_MODE_REQUEST_INDEX, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @usb_control_msg(i32 %19, i32 %23, i32 %24, i32 %29, i32 %30, i32 %31, i8* %32, i32 8, i32 5000)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 8
  br i1 %35, label %36, label %40

36:                                               ; preds = %16
  %37 = call i32 @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %83

40:                                               ; preds = %16
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i8, i8* @BCM5974_WELLSPRING_MODE_VENDOR_VALUE, align 1
  %45 = sext i8 %44 to i32
  br label %49

46:                                               ; preds = %40
  %47 = load i8, i8* @BCM5974_WELLSPRING_MODE_NORMAL_VALUE, align 1
  %48 = sext i8 %47 to i32
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i32 [ %45, %43 ], [ %48, %46 ]
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 %51, i8* %53, align 1
  %54 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %55 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %58 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usb_sndctrlpipe(i32 %59, i32 0)
  %61 = load i32, i32* @BCM5974_WELLSPRING_MODE_WRITE_REQUEST_ID, align 4
  %62 = load i32, i32* @USB_DIR_OUT, align 4
  %63 = load i32, i32* @USB_TYPE_CLASS, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @BCM5974_WELLSPRING_MODE_REQUEST_VALUE, align 4
  %68 = load i32, i32* @BCM5974_WELLSPRING_MODE_REQUEST_INDEX, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @usb_control_msg(i32 %56, i32 %60, i32 %61, i32 %66, i32 %67, i32 %68, i8* %69, i32 8, i32 5000)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 8
  br i1 %72, label %73, label %77

73:                                               ; preds = %49
  %74 = call i32 @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %83

77:                                               ; preds = %49
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %82 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %77, %73, %36, %12
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @kfree(i8* %84)
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
