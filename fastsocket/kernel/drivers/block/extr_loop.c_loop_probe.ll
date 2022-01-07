; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.loop_device = type { i32 }

@loop_devices_mutex = common dso_local global i32 0, align 4
@MINORMASK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kobject* (i32, i32*, i8*)* @loop_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kobject* @loop_probe(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.loop_device*, align 8
  %8 = alloca %struct.kobject*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = call i32 @mutex_lock(i32* @loop_devices_mutex)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MINORMASK, align 4
  %12 = and i32 %10, %11
  %13 = call %struct.loop_device* @loop_init_one(i32 %12)
  store %struct.loop_device* %13, %struct.loop_device** %7, align 8
  %14 = load %struct.loop_device*, %struct.loop_device** %7, align 8
  %15 = icmp ne %struct.loop_device* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.loop_device*, %struct.loop_device** %7, align 8
  %18 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.kobject* @get_disk(i32 %19)
  br label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.kobject* @ERR_PTR(i32 %23)
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi %struct.kobject* [ %20, %16 ], [ %24, %21 ]
  store %struct.kobject* %26, %struct.kobject** %8, align 8
  %27 = call i32 @mutex_unlock(i32* @loop_devices_mutex)
  %28 = load i32*, i32** %5, align 8
  store i32 0, i32* %28, align 4
  %29 = load %struct.kobject*, %struct.kobject** %8, align 8
  ret %struct.kobject* %29
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.loop_device* @loop_init_one(i32) #1

declare dso_local %struct.kobject* @get_disk(i32) #1

declare dso_local %struct.kobject* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
