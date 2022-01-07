; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_lguest_device.c_lg_get_features.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_lguest_device.c_lg_get_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.lguest_device_desc = type { i32 }
%struct.TYPE_2__ = type { %struct.lguest_device_desc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*)* @lg_get_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg_get_features(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.lguest_device_desc*, align 8
  %6 = alloca i32*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %8 = call %struct.TYPE_2__* @to_lgdev(%struct.virtio_device* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.lguest_device_desc*, %struct.lguest_device_desc** %9, align 8
  store %struct.lguest_device_desc* %10, %struct.lguest_device_desc** %5, align 8
  %11 = load %struct.lguest_device_desc*, %struct.lguest_device_desc** %5, align 8
  %12 = call i32* @lg_features(%struct.lguest_device_desc* %11)
  store i32* %12, i32** %6, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %39, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.lguest_device_desc*, %struct.lguest_device_desc** %5, align 8
  %16 = getelementptr inbounds %struct.lguest_device_desc, %struct.lguest_device_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 8
  %19 = call i32 @min(i32 %18, i32 32)
  %20 = icmp ult i32 %14, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %13
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %3, align 4
  %24 = udiv i32 %23, 8
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %3, align 4
  %29 = urem i32 %28, 8
  %30 = shl i32 1, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load i32, i32* %3, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %21
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %13

42:                                               ; preds = %13
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_2__* @to_lgdev(%struct.virtio_device*) #1

declare dso_local i32* @lg_features(%struct.lguest_device_desc*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
