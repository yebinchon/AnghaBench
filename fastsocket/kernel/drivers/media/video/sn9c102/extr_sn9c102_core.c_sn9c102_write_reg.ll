; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_write_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32*, i32*, %struct.usb_device* }
%struct.usb_device = type { i32 }

@SN9C102_CTRL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Failed to write a register (value 0x%02X, index 0x%02X, error %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sn9c102_write_reg(%struct.sn9c102_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sn9c102_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %12 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %11, i32 0, i32 2
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %8, align 8
  %14 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %15 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %19 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @ARRAY_SIZE(i32* %20)
  %22 = icmp uge i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %48

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %28 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %29 = call i32 @usb_sndctrlpipe(%struct.usb_device* %28, i32 0)
  %30 = load i64, i64* %7, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* @SN9C102_CTRL_TIMEOUT, align 4
  %33 = call i32 @usb_control_msg(%struct.usb_device* %27, i32 %29, i32 8, i32 65, i64 %30, i32 0, i32* %31, i32 1, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load i32, i32* %6, align 4
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @DBG(i32 3, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %38, i32 %39)
  store i32 -1, i32* %4, align 4
  br label %48

41:                                               ; preds = %24
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %44 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %42, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %41, %36, %23
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i64, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @DBG(i32, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
