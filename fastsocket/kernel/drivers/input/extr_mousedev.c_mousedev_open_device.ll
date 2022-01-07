; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_mousedev.c_mousedev_open_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_mousedev.c_mousedev_open_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mousedev = type { i64, i32, i32, i32, i32 }

@MOUSEDEV_MIX = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mousedev*)* @mousedev_open_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mousedev_open_device(%struct.mousedev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mousedev*, align 8
  %4 = alloca i32, align 4
  store %struct.mousedev* %0, %struct.mousedev** %3, align 8
  %5 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %6 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock_interruptible(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %53

12:                                               ; preds = %1
  %13 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %14 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MOUSEDEV_MIX, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 (...) @mixdev_open_devices()
  br label %48

20:                                               ; preds = %12
  %21 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %22 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %47

28:                                               ; preds = %20
  %29 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %30 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %28
  %35 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %36 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %35, i32 0, i32 3
  %37 = call i32 @input_open_device(i32* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %42 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %34
  br label %46

46:                                               ; preds = %45, %28
  br label %47

47:                                               ; preds = %46, %25
  br label %48

48:                                               ; preds = %47, %18
  %49 = load %struct.mousedev*, %struct.mousedev** %3, align 8
  %50 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %48, %10
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mixdev_open_devices(...) #1

declare dso_local i32 @input_open_device(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
