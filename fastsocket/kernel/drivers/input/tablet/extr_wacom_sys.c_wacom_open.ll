; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_sys.c_wacom_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.wacom = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @wacom_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_open(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.wacom*, align 8
  %5 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %7 = call %struct.wacom* @input_get_drvdata(%struct.input_dev* %6)
  store %struct.wacom* %7, %struct.wacom** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.wacom*, %struct.wacom** %4, align 8
  %9 = getelementptr inbounds %struct.wacom, %struct.wacom* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = call i64 @usb_autopm_get_interface(%struct.TYPE_3__* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %49

16:                                               ; preds = %1
  %17 = load %struct.wacom*, %struct.wacom** %4, align 8
  %18 = getelementptr inbounds %struct.wacom, %struct.wacom* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.wacom*, %struct.wacom** %4, align 8
  %21 = getelementptr inbounds %struct.wacom, %struct.wacom* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i64 @usb_submit_urb(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %36

29:                                               ; preds = %16
  %30 = load %struct.wacom*, %struct.wacom** %4, align 8
  %31 = getelementptr inbounds %struct.wacom, %struct.wacom* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.wacom*, %struct.wacom** %4, align 8
  %33 = getelementptr inbounds %struct.wacom, %struct.wacom* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %29, %26
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.wacom*, %struct.wacom** %4, align 8
  %41 = getelementptr inbounds %struct.wacom, %struct.wacom* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = call i32 @usb_autopm_put_interface(%struct.TYPE_3__* %42)
  br label %44

44:                                               ; preds = %39, %36
  %45 = load %struct.wacom*, %struct.wacom** %4, align 8
  %46 = getelementptr inbounds %struct.wacom, %struct.wacom* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %44, %13
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.wacom* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i64 @usb_autopm_get_interface(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
