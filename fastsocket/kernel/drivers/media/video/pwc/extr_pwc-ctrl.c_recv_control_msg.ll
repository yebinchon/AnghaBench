; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_recv_control_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_recv_control_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*, i32, i32, i8*, i32)* @recv_control_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_control_msg(%struct.pwc_device* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pwc_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.pwc_device* %0, %struct.pwc_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kmalloc(i32 %14, i32 %15)
  store i8* %16, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %50

22:                                               ; preds = %5
  %23 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %24 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %27 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_rcvctrlpipe(i32 %28, i32 0)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @USB_DIR_IN, align 4
  %32 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %38 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %13, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @usb_control_msg(i32 %25, i32 %29, i32 %30, i32 %35, i32 %36, i32 %39, i8* %40, i32 %41, i32 500)
  store i32 %42, i32* %12, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @memcpy(i8* %43, i8* %44, i32 %45)
  %47 = load i8*, i8** %13, align 8
  %48 = call i32 @kfree(i8* %47)
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %22, %19
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
