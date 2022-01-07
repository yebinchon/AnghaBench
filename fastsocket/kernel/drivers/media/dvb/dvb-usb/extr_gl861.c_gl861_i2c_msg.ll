; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_gl861.c_gl861_i2c_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_gl861.c_gl861_i2c_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@GL861_REQ_I2C_WRITE = common dso_local global i32 0, align 4
@GL861_WRITE = common dso_local global i32 0, align 4
@GL861_REQ_I2C_READ = common dso_local global i32 0, align 4
@GL861_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"wlen = %x, aborting.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32)* @gl861_i2c_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl861_i2c_msg(%struct.dvb_usb_device* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  %20 = shl i32 %19, 9
  store i32 %20, i32* %15, align 4
  %21 = load i32*, i32** %12, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %13, align 4
  %25 = icmp eq i32 %24, 0
  br label %26

26:                                               ; preds = %23, %6
  %27 = phi i1 [ true, %6 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @GL861_REQ_I2C_WRITE, align 4
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* @GL861_WRITE, align 4
  store i32 %33, i32* %18, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @GL861_REQ_I2C_READ, align 4
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* @GL861_READ, align 4
  store i32 %36, i32* %18, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %11, align 4
  switch i32 %38, label %52 [
    i32 1, label %39
    i32 2, label %43
  ]

39:                                               ; preds = %37
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %14, align 4
  br label %57

43:                                               ; preds = %37
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  store i32 %51, i32* %15, align 4
  br label %57

52:                                               ; preds = %37
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %73

57:                                               ; preds = %43, %39
  %58 = call i32 @msleep(i32 1)
  %59 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %60 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %63 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @usb_rcvctrlpipe(i32 %64, i32 0)
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @usb_control_msg(i32 %61, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32* %70, i32 %71, i32 2000)
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %57, %52
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
