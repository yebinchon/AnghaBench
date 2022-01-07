; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sq930x.c_reg_wb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sq930x.c_reg_wb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32, i32 }

@D_USBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"reg_wb v: %04x i: %04x %02x...%02x\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"reg_wb %04x %04x failed %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32, i32*, i32)* @reg_wb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_wb(%struct.gspca_dev* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.gspca_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %66

17:                                               ; preds = %5
  %18 = load i32, i32* @D_USBO, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @PDEBUG(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %22, i32 %28)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %31 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @memcpy(i32 %32, i32* %33, i32 %34)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %37 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %40 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @usb_sndctrlpipe(i32 %41, i32 0)
  %43 = load i32, i32* @USB_DIR_OUT, align 4
  %44 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %51 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @usb_control_msg(i32 %38, i32 %42, i32 12, i32 %47, i32 %48, i32 %49, i32 %52, i32 %53, i32 1000)
  store i32 %54, i32* %11, align 4
  %55 = call i32 @msleep(i32 30)
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %17
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %65 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %16, %58, %17
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @err(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
