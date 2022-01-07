; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_evdev.c_evdev_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_evdev.c_evdev_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.evdev_client* }
%struct.evdev_client = type { i64, i64, %struct.evdev* }
%struct.evdev = type { i64, i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @evdev_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdev_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.evdev_client*, align 8
  %6 = alloca %struct.evdev*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  store %struct.evdev_client* %9, %struct.evdev_client** %5, align 8
  %10 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %11 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %10, i32 0, i32 2
  %12 = load %struct.evdev*, %struct.evdev** %11, align 8
  store %struct.evdev* %12, %struct.evdev** %6, align 8
  %13 = load %struct.file*, %struct.file** %3, align 8
  %14 = load %struct.evdev*, %struct.evdev** %6, align 8
  %15 = getelementptr inbounds %struct.evdev, %struct.evdev* %14, i32 0, i32 1
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @poll_wait(%struct.file* %13, i32* %15, i32* %16)
  %18 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %19 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %22 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @POLLIN, align 4
  %28 = load i32, i32* @POLLRDNORM, align 4
  %29 = or i32 %27, %28
  br label %30

30:                                               ; preds = %26, %25
  %31 = phi i32 [ 0, %25 ], [ %29, %26 ]
  %32 = load %struct.evdev*, %struct.evdev** %6, align 8
  %33 = getelementptr inbounds %struct.evdev, %struct.evdev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @POLLHUP, align 4
  %39 = load i32, i32* @POLLERR, align 4
  %40 = or i32 %38, %39
  br label %41

41:                                               ; preds = %37, %36
  %42 = phi i32 [ 0, %36 ], [ %40, %37 ]
  %43 = or i32 %31, %42
  ret i32 %43
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
