; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_gp8psk.c_gp8psk_usb_in_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_gp8psk.c_gp8psk_usb_in_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, i32 }

@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"reading number %d (ret: %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"usb in %d operation failed.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"in: req. %x, val: %x, ind: %x, buffer: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gp8psk_usb_in_op(%struct.dvb_usb_device* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock_interruptible(i32* %17)
  store i32 %18, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* %14, align 4
  store i32 %21, i32* %7, align 4
  br label %82

22:                                               ; preds = %6
  br label %23

23:                                               ; preds = %35, %22
  %24 = load i32, i32* %14, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 3
  br label %33

33:                                               ; preds = %30, %26, %23
  %34 = phi i1 [ false, %26 ], [ false, %23 ], [ %32, %30 ]
  br i1 %34, label %35, label %57

35:                                               ; preds = %33
  %36 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %40 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @usb_rcvctrlpipe(i32 %41, i32 0)
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %45 = load i32, i32* @USB_DIR_IN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @usb_control_msg(i32 %38, i32 %42, i32 %43, i32 %46, i32 %47, i32 %48, i32* %49, i32 %50, i32 2000)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @deb_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %15, align 4
  br label %23

57:                                               ; preds = %33
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %14, align 4
  br label %70

69:                                               ; preds = %60
  store i32 0, i32* %14, align 4
  br label %70

70:                                               ; preds = %69, %64
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @deb_xfer(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %72, i32 %73)
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @debug_dump(i32* %75, i32 %76, i32 (i8*, i32, i32, i32)* @deb_xfer)
  %78 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %79 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %70, %20
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @deb_info(i8*, i32, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @deb_xfer(i8*, i32, i32, i32) #1

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*, i32, i32, i32)*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
