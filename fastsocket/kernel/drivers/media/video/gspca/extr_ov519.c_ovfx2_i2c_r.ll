; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ovfx2_i2c_r.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ovfx2_i2c_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@D_USBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ovfx2_i2c_r %02x %02x\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ovfx2_i2c_r %02x failed %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i64)* @ovfx2_i2c_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovfx2_i2c_r(%struct.sd* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.sd*, %struct.sd** %4, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %58

13:                                               ; preds = %2
  %14 = load %struct.sd*, %struct.sd** %4, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sd*, %struct.sd** %4, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @usb_rcvctrlpipe(i32 %21, i32 0)
  %23 = load i32, i32* @USB_DIR_IN, align 4
  %24 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %27 = or i32 %25, %26
  %28 = load i64, i64* %5, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.sd*, %struct.sd** %4, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @usb_control_msg(i32 %17, i32 %22, i32 3, i32 %27, i32 0, i32 %29, i32* %33, i32 1, i32 500)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %13
  %38 = load %struct.sd*, %struct.sd** %4, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @D_USBI, align 4
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @PDEBUG(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %45, i32 %46)
  br label %56

48:                                               ; preds = %13
  %49 = load i64, i64* %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.sd*, %struct.sd** %4, align 8
  %54 = getelementptr inbounds %struct.sd, %struct.sd* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  br label %56

56:                                               ; preds = %48, %37
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %12
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i64, i32) #1

declare dso_local i32 @err(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
