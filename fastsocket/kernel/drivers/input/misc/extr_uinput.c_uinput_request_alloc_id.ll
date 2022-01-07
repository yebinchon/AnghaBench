; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_uinput.c_uinput_request_alloc_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_uinput.c_uinput_request_alloc_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uinput_device = type { i32, %struct.uinput_request** }
%struct.uinput_request = type { i32 }

@UINPUT_NUM_REQUESTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uinput_device*, %struct.uinput_request*)* @uinput_request_alloc_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uinput_request_alloc_id(%struct.uinput_device* %0, %struct.uinput_request* %1) #0 {
  %3 = alloca %struct.uinput_device*, align 8
  %4 = alloca %struct.uinput_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uinput_device* %0, %struct.uinput_device** %3, align 8
  store %struct.uinput_request* %1, %struct.uinput_request** %4, align 8
  store i32 -1, i32* %6, align 4
  %7 = load %struct.uinput_device*, %struct.uinput_device** %3, align 8
  %8 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %35, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @UINPUT_NUM_REQUESTS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = load %struct.uinput_device*, %struct.uinput_device** %3, align 8
  %16 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %15, i32 0, i32 1
  %17 = load %struct.uinput_request**, %struct.uinput_request*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.uinput_request*, %struct.uinput_request** %17, i64 %19
  %21 = load %struct.uinput_request*, %struct.uinput_request** %20, align 8
  %22 = icmp ne %struct.uinput_request* %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.uinput_request*, %struct.uinput_request** %4, align 8
  %26 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.uinput_request*, %struct.uinput_request** %4, align 8
  %28 = load %struct.uinput_device*, %struct.uinput_device** %3, align 8
  %29 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %28, i32 0, i32 1
  %30 = load %struct.uinput_request**, %struct.uinput_request*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.uinput_request*, %struct.uinput_request** %30, i64 %32
  store %struct.uinput_request* %27, %struct.uinput_request** %33, align 8
  store i32 0, i32* %6, align 4
  br label %38

34:                                               ; preds = %14
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %10

38:                                               ; preds = %23, %10
  %39 = load %struct.uinput_device*, %struct.uinput_device** %3, align 8
  %40 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
