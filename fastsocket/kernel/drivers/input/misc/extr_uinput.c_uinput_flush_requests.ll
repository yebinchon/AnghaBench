; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_uinput.c_uinput_flush_requests.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_uinput.c_uinput_flush_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uinput_device = type { i32, %struct.uinput_request** }
%struct.uinput_request = type { i32 }

@UINPUT_NUM_REQUESTS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uinput_device*)* @uinput_flush_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uinput_flush_requests(%struct.uinput_device* %0) #0 {
  %2 = alloca %struct.uinput_device*, align 8
  %3 = alloca %struct.uinput_request*, align 8
  %4 = alloca i32, align 4
  store %struct.uinput_device* %0, %struct.uinput_device** %2, align 8
  %5 = load %struct.uinput_device*, %struct.uinput_device** %2, align 8
  %6 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %31, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @UINPUT_NUM_REQUESTS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = load %struct.uinput_device*, %struct.uinput_device** %2, align 8
  %14 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %13, i32 0, i32 1
  %15 = load %struct.uinput_request**, %struct.uinput_request*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.uinput_request*, %struct.uinput_request** %15, i64 %17
  %19 = load %struct.uinput_request*, %struct.uinput_request** %18, align 8
  store %struct.uinput_request* %19, %struct.uinput_request** %3, align 8
  %20 = load %struct.uinput_request*, %struct.uinput_request** %3, align 8
  %21 = icmp ne %struct.uinput_request* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %12
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  %25 = load %struct.uinput_request*, %struct.uinput_request** %3, align 8
  %26 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.uinput_device*, %struct.uinput_device** %2, align 8
  %28 = load %struct.uinput_request*, %struct.uinput_request** %3, align 8
  %29 = call i32 @uinput_request_done(%struct.uinput_device* %27, %struct.uinput_request* %28)
  br label %30

30:                                               ; preds = %22, %12
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %8

34:                                               ; preds = %8
  %35 = load %struct.uinput_device*, %struct.uinput_device** %2, align 8
  %36 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @uinput_request_done(%struct.uinput_device*, %struct.uinput_request*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
