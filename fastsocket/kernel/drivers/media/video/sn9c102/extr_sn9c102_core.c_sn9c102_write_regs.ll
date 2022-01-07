; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_write_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i64*, i64*, %struct.usb_device* }
%struct.usb_device = type { i32 }

@SN9C102_CTRL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Failed to write a register (value 0x%02X, index 0x%02X, error %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sn9c102_write_regs(%struct.sn9c102_device* %0, [2 x i64]* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sn9c102_device*, align 8
  %6 = alloca [2 x i64]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %5, align 8
  store [2 x i64]* %1, [2 x i64]** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %14 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %13, i32 0, i32 2
  %15 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  store %struct.usb_device* %15, %struct.usb_device** %8, align 8
  %16 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %17 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %9, align 8
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %60, %3
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %19
  %24 = load [2 x i64]*, [2 x i64]** %6, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x i64], [2 x i64]* %24, i64 %26
  %28 = getelementptr inbounds [2 x i64], [2 x i64]* %27, i64 0, i64 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  %30 = load [2 x i64]*, [2 x i64]** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x i64], [2 x i64]* %30, i64 %32
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %33, i64 0, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %9, align 8
  store i64 %35, i64* %36, align 8
  %37 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %38 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %39 = call i32 @usb_sndctrlpipe(%struct.usb_device* %38, i32 0)
  %40 = load i64, i64* %12, align 8
  %41 = load i64*, i64** %9, align 8
  %42 = load i32, i32* @SN9C102_CTRL_TIMEOUT, align 4
  %43 = call i32 @usb_control_msg(%struct.usb_device* %37, i32 %39, i32 8, i32 65, i64 %40, i32 0, i64* %41, i32 1, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %23
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @DBG(i32 3, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %48, i64 %49, i32 %50)
  store i32 -1, i32* %4, align 4
  br label %64

52:                                               ; preds = %23
  %53 = load i64*, i64** %9, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %56 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 %54, i64* %59, align 8
  br label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %19

63:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %46
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i64, i32, i64*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @DBG(i32, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
