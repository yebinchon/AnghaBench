; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_mousedev.c_mousedev_close_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_mousedev.c_mousedev_close_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mousedev = type { i64, i32, i32, i32, i64 }

@MOUSEDEV_MIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mousedev*)* @mousedev_close_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mousedev_close_device(%struct.mousedev* %0) #0 {
  %2 = alloca %struct.mousedev*, align 8
  store %struct.mousedev* %0, %struct.mousedev** %2, align 8
  %3 = load %struct.mousedev*, %struct.mousedev** %2, align 8
  %4 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.mousedev*, %struct.mousedev** %2, align 8
  %7 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MOUSEDEV_MIX, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (...) @mixdev_close_devices()
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.mousedev*, %struct.mousedev** %2, align 8
  %15 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.mousedev*, %struct.mousedev** %2, align 8
  %20 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load %struct.mousedev*, %struct.mousedev** %2, align 8
  %26 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %25, i32 0, i32 2
  %27 = call i32 @input_close_device(i32* %26)
  br label %28

28:                                               ; preds = %24, %18, %13
  br label %29

29:                                               ; preds = %28, %11
  %30 = load %struct.mousedev*, %struct.mousedev** %2, align 8
  %31 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mixdev_close_devices(...) #1

declare dso_local i32 @input_close_device(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
