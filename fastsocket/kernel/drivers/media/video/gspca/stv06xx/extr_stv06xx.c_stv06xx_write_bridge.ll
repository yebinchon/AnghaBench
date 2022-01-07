; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx.c_stv06xx_write_bridge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx.c_stv06xx_write_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, %struct.usb_device* }
%struct.usb_device = type { i32 }

@STV06XX_URB_MSG_TIMEOUT = common dso_local global i32 0, align 4
@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Written 0x%x to address 0x%x, status: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stv06xx_write_bridge(%struct.sd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sd*, %struct.sd** %4, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  store %struct.usb_device* %14, %struct.usb_device** %8, align 8
  %15 = load %struct.sd*, %struct.sd** %4, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 255
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 2, i32 1
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 255
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %33 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %34 = call i32 @usb_sndctrlpipe(%struct.usb_device* %33, i32 0)
  %35 = load i32, i32* %5, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @STV06XX_URB_MSG_TIMEOUT, align 4
  %39 = call i32 @usb_control_msg(%struct.usb_device* %32, i32 %34, i32 4, i32 64, i32 %35, i32 0, i32* %36, i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @D_CONF, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @PDEBUG(i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %3
  %48 = load i32, i32* %7, align 4
  br label %50

49:                                               ; preds = %3
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  ret i32 %51
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
