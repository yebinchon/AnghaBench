; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_evdev.c_evdev_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_evdev.c_evdev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.evdev_client* }
%struct.evdev_client = type { %struct.evdev* }
%struct.evdev = type { i32, i32, %struct.evdev_client* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @evdev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdev_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.evdev_client*, align 8
  %6 = alloca %struct.evdev*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.evdev_client*, %struct.evdev_client** %8, align 8
  store %struct.evdev_client* %9, %struct.evdev_client** %5, align 8
  %10 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %11 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %10, i32 0, i32 0
  %12 = load %struct.evdev*, %struct.evdev** %11, align 8
  store %struct.evdev* %12, %struct.evdev** %6, align 8
  %13 = load %struct.evdev*, %struct.evdev** %6, align 8
  %14 = getelementptr inbounds %struct.evdev, %struct.evdev* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.evdev*, %struct.evdev** %6, align 8
  %17 = getelementptr inbounds %struct.evdev, %struct.evdev* %16, i32 0, i32 2
  %18 = load %struct.evdev_client*, %struct.evdev_client** %17, align 8
  %19 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %20 = icmp eq %struct.evdev_client* %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.evdev*, %struct.evdev** %6, align 8
  %23 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %24 = call i32 @evdev_ungrab(%struct.evdev* %22, %struct.evdev_client* %23)
  br label %25

25:                                               ; preds = %21, %2
  %26 = load %struct.evdev*, %struct.evdev** %6, align 8
  %27 = getelementptr inbounds %struct.evdev, %struct.evdev* %26, i32 0, i32 1
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.evdev*, %struct.evdev** %6, align 8
  %30 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %31 = call i32 @evdev_detach_client(%struct.evdev* %29, %struct.evdev_client* %30)
  %32 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %33 = call i32 @kfree(%struct.evdev_client* %32)
  %34 = load %struct.evdev*, %struct.evdev** %6, align 8
  %35 = call i32 @evdev_close_device(%struct.evdev* %34)
  %36 = load %struct.evdev*, %struct.evdev** %6, align 8
  %37 = getelementptr inbounds %struct.evdev, %struct.evdev* %36, i32 0, i32 0
  %38 = call i32 @put_device(i32* %37)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @evdev_ungrab(%struct.evdev*, %struct.evdev_client*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @evdev_detach_client(%struct.evdev*, %struct.evdev_client*) #1

declare dso_local i32 @kfree(%struct.evdev_client*) #1

declare dso_local i32 @evdev_close_device(%struct.evdev*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
