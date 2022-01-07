; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_uinput.c_uinput_request_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_uinput.c_uinput_request_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uinput_device = type { i64, i32, i32 }
%struct.uinput_request = type { i32, i32 }

@UIST_CREATED = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@EV_UINPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uinput_device*, %struct.uinput_request*)* @uinput_request_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uinput_request_submit(%struct.uinput_device* %0, %struct.uinput_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uinput_device*, align 8
  %5 = alloca %struct.uinput_request*, align 8
  %6 = alloca i32, align 4
  store %struct.uinput_device* %0, %struct.uinput_device** %4, align 8
  store %struct.uinput_request* %1, %struct.uinput_request** %5, align 8
  %7 = load %struct.uinput_device*, %struct.uinput_device** %4, align 8
  %8 = load %struct.uinput_request*, %struct.uinput_request** %5, align 8
  %9 = call i32 @uinput_request_reserve_slot(%struct.uinput_device* %7, %struct.uinput_request* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %48

14:                                               ; preds = %2
  %15 = load %struct.uinput_device*, %struct.uinput_device** %4, align 8
  %16 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock_interruptible(i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %48

22:                                               ; preds = %14
  %23 = load %struct.uinput_device*, %struct.uinput_device** %4, align 8
  %24 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @UIST_CREATED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %43

31:                                               ; preds = %22
  %32 = load %struct.uinput_device*, %struct.uinput_device** %4, align 8
  %33 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @EV_UINPUT, align 4
  %36 = load %struct.uinput_request*, %struct.uinput_request** %5, align 8
  %37 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.uinput_request*, %struct.uinput_request** %5, align 8
  %40 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @uinput_dev_event(i32 %34, i32 %35, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %31, %28
  %44 = load %struct.uinput_device*, %struct.uinput_device** %4, align 8
  %45 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %44, i32 0, i32 1
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %20, %12
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @uinput_request_reserve_slot(%struct.uinput_device*, %struct.uinput_request*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @uinput_dev_event(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
