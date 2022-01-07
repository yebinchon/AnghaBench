; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c_tape_do_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_core.c_tape_do_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32, i32 }
%struct.tape_request = type { i32, i32*, i32* }

@__tape_wake_up = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_do_io(%struct.tape_device* %0, %struct.tape_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca %struct.tape_request*, align 8
  %6 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store %struct.tape_request* %1, %struct.tape_request** %5, align 8
  %7 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %8 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @get_ccwdev_lock(i32 %9)
  %11 = call i32 @spin_lock_irq(i32 %10)
  %12 = load i32*, i32** @__tape_wake_up, align 8
  %13 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %14 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  %15 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %16 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %15, i32 0, i32 0
  %17 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %18 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %17, i32 0, i32 2
  store i32* %16, i32** %18, align 8
  %19 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %20 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %21 = call i32 @__tape_start_request(%struct.tape_device* %19, %struct.tape_request* %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %23 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @get_ccwdev_lock(i32 %24)
  %26 = call i32 @spin_unlock_irq(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %44

31:                                               ; preds = %2
  %32 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %33 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %36 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @wait_event(i32 %34, i32 %39)
  %41 = load %struct.tape_request*, %struct.tape_request** %5, align 8
  %42 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %31, %29
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @__tape_start_request(%struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
