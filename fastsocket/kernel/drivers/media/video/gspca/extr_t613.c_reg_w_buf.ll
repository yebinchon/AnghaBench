; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_t613.c_reg_w_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_t613.c_reg_w_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32* }

@USB_BUF_SZ = common dso_local global i64 0, align 8
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i64)* @reg_w_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_w_buf(%struct.gspca_dev* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @USB_BUF_SZ, align 8
  %10 = icmp sle i64 %8, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %3
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @memcpy(i32* %14, i32* %15, i64 %16)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %22 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @usb_sndctrlpipe(i32 %23, i32 0)
  %25 = load i32, i32* @USB_DIR_OUT, align 4
  %26 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %31 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @usb_control_msg(i32 %20, i32 %24, i32 0, i32 %29, i32 1, i32 0, i32* %32, i64 %33, i32 500)
  br label %62

35:                                               ; preds = %3
  %36 = load i32*, i32** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32* @kmemdup(i32* %36, i64 %37, i32 %38)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = call i32 @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %62

44:                                               ; preds = %35
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %46 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %49 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @usb_sndctrlpipe(i32 %50, i32 0)
  %52 = load i32, i32* @USB_DIR_OUT, align 4
  %53 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %56 = or i32 %54, %55
  %57 = load i32*, i32** %7, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @usb_control_msg(i32 %47, i32 %51, i32 0, i32 %56, i32 1, i32 0, i32* %57, i64 %58, i32 500)
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @kfree(i32* %60)
  br label %62

62:                                               ; preds = %42, %44, %11
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i64, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32* @kmemdup(i32*, i64, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
