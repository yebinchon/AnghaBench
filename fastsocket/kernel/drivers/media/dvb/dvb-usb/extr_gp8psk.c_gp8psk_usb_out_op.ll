; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_gp8psk.c_gp8psk_usb_out_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_gp8psk.c_gp8psk_usb_out_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"out: req. %x, val: %x, ind: %x, buffer: \00", align 1
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"usb out operation failed.\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gp8psk_usb_out_op(%struct.dvb_usb_device* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @deb_xfer(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  %19 = load i32*, i32** %12, align 8
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @debug_dump(i32* %19, i32 %20, i32 (i8*, i32, i32, i32)* @deb_xfer)
  %22 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock_interruptible(i32* %23)
  store i32 %24, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %7, align 4
  br label %57

28:                                               ; preds = %6
  %29 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %30 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %33 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_sndctrlpipe(i32 %34, i32 0)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %38 = load i32, i32* @USB_DIR_OUT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @usb_control_msg(i32 %31, i32 %35, i32 %36, i32 %39, i32 %40, i32 %41, i32* %42, i32 %43, i32 2000)
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %28
  %48 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %14, align 4
  br label %52

51:                                               ; preds = %28
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %51, %47
  %53 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %54 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %52, %26
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @deb_xfer(i8*, i32, i32, i32) #1

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*, i32, i32, i32)*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
