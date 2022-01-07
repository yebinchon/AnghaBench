; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_friio.c_gl861_i2c_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_friio.c_gl861_i2c_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dvb_usb_device = type { i32 }

@friio_fe_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@JDVBT90502_2ND_I2C_REG = common dso_local global i32 0, align 4
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
  %19 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = shl i32 %20, 9
  store i32 %21, i32* %15, align 4
  %22 = load i32*, i32** %12, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* %13, align 4
  %26 = icmp eq i32 %25, 0
  br label %27

27:                                               ; preds = %24, %6
  %28 = phi i1 [ true, %6 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @friio_fe_config, i32 0, i32 0), align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load i32*, i32** %10, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @JDVBT90502_2ND_I2C_REG, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @gl861_i2c_ctrlmsg_data(%struct.dvb_usb_device* %40, i32 %41, i32* %42, i32 %43, i32* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  br label %111

47:                                               ; preds = %33, %27
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* @GL861_REQ_I2C_WRITE, align 4
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* @GL861_WRITE, align 4
  store i32 %52, i32* %18, align 4
  %53 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %54 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @usb_sndctrlpipe(i32 %55, i32 0)
  store i32 %56, i32* %19, align 4
  br label %64

57:                                               ; preds = %47
  %58 = load i32, i32* @GL861_REQ_I2C_READ, align 4
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* @GL861_READ, align 4
  store i32 %59, i32* %18, align 4
  %60 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %61 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @usb_rcvctrlpipe(i32 %62, i32 0)
  store i32 %63, i32* %19, align 4
  br label %64

64:                                               ; preds = %57, %50
  %65 = load i32, i32* %11, align 4
  switch i32 %65, label %93 [
    i32 1, label %66
    i32 2, label %70
    i32 3, label %79
  ]

66:                                               ; preds = %64
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %14, align 4
  br label %98

70:                                               ; preds = %64
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %74, %77
  store i32 %78, i32* %15, align 4
  br label %98

79:                                               ; preds = %64
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 8
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %83, %86
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %88, %91
  store i32 %92, i32* %15, align 4
  br label %98

93:                                               ; preds = %64
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @deb_xfer(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %7, align 4
  br label %111

98:                                               ; preds = %79, %70, %66
  %99 = call i32 @msleep(i32 1)
  %100 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %101 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %19, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32*, i32** %12, align 8
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @usb_control_msg(i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32* %108, i32 %109, i32 2000)
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %98, %93, %39
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i32 @gl861_i2c_ctrlmsg_data(%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @deb_xfer(i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
