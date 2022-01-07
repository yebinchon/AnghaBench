; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_do_get_device_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_do_get_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubi_do_get_device_info(%struct.ubi_device* %0, %struct.ubi_device_info* %1) #0 {
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca %struct.ubi_device_info*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  store %struct.ubi_device_info* %1, %struct.ubi_device_info** %4, align 8
  %5 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %6 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ubi_device_info*, %struct.ubi_device_info** %4, align 8
  %9 = getelementptr inbounds %struct.ubi_device_info, %struct.ubi_device_info* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %11 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ubi_device_info*, %struct.ubi_device_info** %4, align 8
  %14 = getelementptr inbounds %struct.ubi_device_info, %struct.ubi_device_info* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %16 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ubi_device_info*, %struct.ubi_device_info** %4, align 8
  %19 = getelementptr inbounds %struct.ubi_device_info, %struct.ubi_device_info* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %21 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ubi_device_info*, %struct.ubi_device_info** %4, align 8
  %24 = getelementptr inbounds %struct.ubi_device_info, %struct.ubi_device_info* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %26 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ubi_device_info*, %struct.ubi_device_info** %4, align 8
  %30 = getelementptr inbounds %struct.ubi_device_info, %struct.ubi_device_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
