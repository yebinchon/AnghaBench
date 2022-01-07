; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_virtio-rng.c_probe_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_virtio-rng.c_probe_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@vq = common dso_local global i32* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@random_recv_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@virtio_hwrng = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*)* @probe_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_common(%struct.virtio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %3, align 8
  %5 = load i32*, i32** @vq, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @EBUSY, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %12 = load i32, i32* @random_recv_done, align 4
  %13 = call i32* @virtio_find_single_vq(%struct.virtio_device* %11, i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** @vq, align 8
  %14 = load i32*, i32** @vq, align 8
  %15 = call i64 @IS_ERR(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load i32*, i32** @vq, align 8
  %19 = call i32 @PTR_ERR(i32* %18)
  store i32 %19, i32* %4, align 4
  store i32* null, i32** @vq, align 8
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %37

21:                                               ; preds = %10
  %22 = call i32 @hwrng_register(i32* @virtio_hwrng)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %27 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.virtio_device*)**
  %31 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %30, align 8
  %32 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %33 = call i32 %31(%struct.virtio_device* %32)
  store i32* null, i32** @vq, align 8
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %21
  %36 = call i32 (...) @register_buffer()
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %25, %17, %7
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32* @virtio_find_single_vq(%struct.virtio_device*, i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @hwrng_register(i32*) #1

declare dso_local i32 @register_buffer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
