; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_friio.c_gl861_i2c_ctrlmsg_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_friio.c_gl861_i2c_ctrlmsg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"write to PLL:0x%02x via FE reg:0x%02x, len:%d\0A\00", align 1
@GL861_REQ_I2C_DATA_CTRL_WRITE = common dso_local global i32 0, align 4
@GL861_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"not supported ctrl-msg, aborting.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32*, i64, i32*, i64)* @gl861_i2c_ctrlmsg_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl861_i2c_ctrlmsg_data(%struct.dvb_usb_device* %0, i32 %1, i32* %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %14, align 8
  %23 = load i32, i32* %9, align 4
  %24 = shl i32 %23, 9
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %15, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = load i64, i64* %13, align 8
  %30 = icmp eq i64 %29, 0
  br label %31

31:                                               ; preds = %28, %6
  %32 = phi i1 [ true, %6 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %16, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %11, align 8
  %41 = sub nsw i64 %40, 1
  %42 = call i32 (i8*, ...) @deb_xfer(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39, i64 %41)
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %31
  %46 = load i64, i64* %11, align 8
  %47 = icmp sge i64 %46, 2
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = load i32, i32* @GL861_REQ_I2C_DATA_CTRL_WRITE, align 4
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* @GL861_WRITE, align 4
  store i32 %50, i32* %18, align 4
  %51 = call i32 @udelay(i32 20)
  %52 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %53 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %56 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @usb_sndctrlpipe(i32 %57, i32 0)
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i64, i64* %11, align 8
  %66 = sub nsw i64 %65, 1
  %67 = call i32 @usb_control_msg(i32 %54, i32 %58, i32 %59, i32 %60, i64 %61, i64 %62, i32* %64, i64 %66, i32 2000)
  store i32 %67, i32* %7, align 4
  br label %72

68:                                               ; preds = %45, %31
  %69 = call i32 (i8*, ...) @deb_xfer(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %48
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @deb_xfer(i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i64, i64, i32*, i64, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
