; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_evdev.c_evdev_ungrab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_evdev.c_evdev_ungrab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev = type { i32, %struct.evdev_client* }
%struct.evdev_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdev*, %struct.evdev_client*)* @evdev_ungrab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdev_ungrab(%struct.evdev* %0, %struct.evdev_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evdev*, align 8
  %5 = alloca %struct.evdev_client*, align 8
  store %struct.evdev* %0, %struct.evdev** %4, align 8
  store %struct.evdev_client* %1, %struct.evdev_client** %5, align 8
  %6 = load %struct.evdev*, %struct.evdev** %4, align 8
  %7 = getelementptr inbounds %struct.evdev, %struct.evdev* %6, i32 0, i32 1
  %8 = load %struct.evdev_client*, %struct.evdev_client** %7, align 8
  %9 = load %struct.evdev_client*, %struct.evdev_client** %5, align 8
  %10 = icmp ne %struct.evdev_client* %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %23

14:                                               ; preds = %2
  %15 = load %struct.evdev*, %struct.evdev** %4, align 8
  %16 = getelementptr inbounds %struct.evdev, %struct.evdev* %15, i32 0, i32 1
  %17 = load %struct.evdev_client*, %struct.evdev_client** %16, align 8
  %18 = call i32 @rcu_assign_pointer(%struct.evdev_client* %17, i32* null)
  %19 = call i32 (...) @synchronize_rcu()
  %20 = load %struct.evdev*, %struct.evdev** %4, align 8
  %21 = getelementptr inbounds %struct.evdev, %struct.evdev* %20, i32 0, i32 0
  %22 = call i32 @input_release_device(i32* %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %14, %11
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @rcu_assign_pointer(%struct.evdev_client*, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @input_release_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
