; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_reg_w.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_reg_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i8*, i64, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"0x%02X:0x%02X\00", align 1
@BCL_OV518 = common dso_local global i64 0, align 8
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"reg write: error %d: %s\00", align 1
@urb_errlist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i8, i8)* @reg_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_w(%struct.usb_ov511* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %8 = load i8, i8* %5, align 1
  %9 = load i8, i8* %6, align 1
  %10 = call i32 @PDEBUG(i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8 zeroext %8, i8 zeroext %9)
  %11 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %12 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i8, i8* %6, align 1
  %15 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %16 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 %14, i8* %18, align 1
  %19 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %20 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %23 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @usb_sndctrlpipe(i32 %24, i32 0)
  %26 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %27 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BCL_OV518, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 2
  %33 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %34 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %35 = or i32 %33, %34
  %36 = load i8, i8* %5, align 1
  %37 = zext i8 %36 to i32
  %38 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %39 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = call i32 @usb_control_msg(i32 %21, i32 %25, i32 %32, i32 %35, i32 0, i32 %37, i8* %41, i32 1, i32 1000)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %44 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %43, i32 0, i32 2
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %3
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @urb_errlist, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @symbolic(i32 %50, i32 %51)
  %53 = call i32 @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %48, %3
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @PDEBUG(i32, i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @err(i8*, i32, i32) #1

declare dso_local i32 @symbolic(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
