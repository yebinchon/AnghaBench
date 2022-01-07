; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_evdev.c_evdev_open_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_evdev.c_evdev_open_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev = type { i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdev*)* @evdev_open_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdev_open_device(%struct.evdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evdev*, align 8
  %4 = alloca i32, align 4
  store %struct.evdev* %0, %struct.evdev** %3, align 8
  %5 = load %struct.evdev*, %struct.evdev** %3, align 8
  %6 = getelementptr inbounds %struct.evdev, %struct.evdev* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock_interruptible(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %44

12:                                               ; preds = %1
  %13 = load %struct.evdev*, %struct.evdev** %3, align 8
  %14 = getelementptr inbounds %struct.evdev, %struct.evdev* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %39

20:                                               ; preds = %12
  %21 = load %struct.evdev*, %struct.evdev** %3, align 8
  %22 = getelementptr inbounds %struct.evdev, %struct.evdev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load %struct.evdev*, %struct.evdev** %3, align 8
  %28 = getelementptr inbounds %struct.evdev, %struct.evdev* %27, i32 0, i32 2
  %29 = call i32 @input_open_device(i32* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.evdev*, %struct.evdev** %3, align 8
  %34 = getelementptr inbounds %struct.evdev, %struct.evdev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %26
  br label %38

38:                                               ; preds = %37, %20
  br label %39

39:                                               ; preds = %38, %17
  %40 = load %struct.evdev*, %struct.evdev** %3, align 8
  %41 = getelementptr inbounds %struct.evdev, %struct.evdev* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %39, %10
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @input_open_device(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
