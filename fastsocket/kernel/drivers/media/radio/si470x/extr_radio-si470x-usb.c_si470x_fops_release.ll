; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_fops_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_fops_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.si470x_device = type { i64, i32, i32, i32, %struct.si470x_device*, %struct.si470x_device*, i32, i64, i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @si470x_fops_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_fops_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.si470x_device*, align 8
  %4 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = call %struct.si470x_device* @video_drvdata(%struct.file* %5)
  store %struct.si470x_device* %6, %struct.si470x_device** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %8 = icmp ne %struct.si470x_device* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %4, align 4
  br label %77

12:                                               ; preds = %1
  %13 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %14 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %17 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %21 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %12
  %25 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %26 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %25, i32 0, i32 9
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %31 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %30, i32 0, i32 9
  store i64 0, i64* %31, align 8
  %32 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %33 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %32, i32 0, i32 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %38 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %37, i32 0, i32 8
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @usb_kill_urb(i64 %39)
  br label %41

41:                                               ; preds = %36, %29
  br label %42

42:                                               ; preds = %41, %24
  %43 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %44 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %49 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @video_unregister_device(i32 %50)
  %52 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %53 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %52, i32 0, i32 5
  %54 = load %struct.si470x_device*, %struct.si470x_device** %53, align 8
  %55 = call i32 @kfree(%struct.si470x_device* %54)
  %56 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %57 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %56, i32 0, i32 4
  %58 = load %struct.si470x_device*, %struct.si470x_device** %57, align 8
  %59 = call i32 @kfree(%struct.si470x_device* %58)
  %60 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %61 = call i32 @kfree(%struct.si470x_device* %60)
  br label %73

62:                                               ; preds = %42
  %63 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %64 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %63, i32 0, i32 3
  %65 = call i32 @wake_up_interruptible(i32* %64)
  %66 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %67 = call i32 @si470x_stop(%struct.si470x_device* %66)
  store i32 %67, i32* %4, align 4
  %68 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %69 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @usb_autopm_put_interface(i32 %70)
  br label %72

72:                                               ; preds = %62, %12
  br label %73

73:                                               ; preds = %72, %47
  %74 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %75 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  br label %77

77:                                               ; preds = %73, %9
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.si470x_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_kill_urb(i64) #1

declare dso_local i32 @video_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.si470x_device*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @si470x_stop(%struct.si470x_device*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
