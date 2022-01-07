; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i32 }
%struct.file = type { i32 }
%struct.switch_request = type { i32, %struct.file* }
%struct.bio = type { i32*, %struct.switch_request* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, %struct.file*)* @loop_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_switch(%struct.loop_device* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop_device*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.switch_request, align 8
  %7 = alloca %struct.bio*, align 8
  store %struct.loop_device* %0, %struct.loop_device** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.bio* @bio_alloc(i32 %8, i32 0)
  store %struct.bio* %9, %struct.bio** %7, align 8
  %10 = load %struct.bio*, %struct.bio** %7, align 8
  %11 = icmp ne %struct.bio* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.switch_request, %struct.switch_request* %6, i32 0, i32 0
  %17 = call i32 @init_completion(i32* %16)
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = getelementptr inbounds %struct.switch_request, %struct.switch_request* %6, i32 0, i32 1
  store %struct.file* %18, %struct.file** %19, align 8
  %20 = load %struct.bio*, %struct.bio** %7, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 1
  store %struct.switch_request* %6, %struct.switch_request** %21, align 8
  %22 = load %struct.bio*, %struct.bio** %7, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %25 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bio*, %struct.bio** %7, align 8
  %28 = call i32 @loop_make_request(i32 %26, %struct.bio* %27)
  %29 = getelementptr inbounds %struct.switch_request, %struct.switch_request* %6, i32 0, i32 0
  %30 = call i32 @wait_for_completion(i32* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %15, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @loop_make_request(i32, %struct.bio*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
