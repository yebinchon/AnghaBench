; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_vp702x.c_vp702x_usb_inout_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_vp702x.c_vp702x_usb_inout_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@REQUEST_OUT = common dso_local global i32 0, align 4
@REQUEST_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vp702x_usb_inout_op(%struct.dvb_usb_device* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock_interruptible(i32* %16)
  store i32 %17, i32* %14, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* %14, align 4
  store i32 %20, i32* %7, align 4
  br label %38

21:                                               ; preds = %6
  %22 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %23 = load i32, i32* @REQUEST_OUT, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @vp702x_usb_out_op(%struct.dvb_usb_device* %22, i32 %23, i32 0, i32 0, i32* %24, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @msleep(i32 %27)
  %29 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %30 = load i32, i32* @REQUEST_IN, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @vp702x_usb_in_op(%struct.dvb_usb_device* %29, i32 %30, i32 0, i32 0, i32* %31, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %35 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %21, %19
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @vp702x_usb_out_op(%struct.dvb_usb_device*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @vp702x_usb_in_op(%struct.dvb_usb_device*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
