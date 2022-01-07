; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/kvm/extr_kvm_virtio.c_kvm_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/kvm/extr_kvm_virtio.c_kvm_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.kvm_device_desc = type { i32 }
%struct.TYPE_2__ = type { %struct.kvm_device_desc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*, i32, i8*, i32)* @kvm_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_set(%struct.virtio_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.virtio_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_device_desc*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  %11 = call %struct.TYPE_2__* @to_kvmdev(%struct.virtio_device* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.kvm_device_desc*, %struct.kvm_device_desc** %12, align 8
  store %struct.kvm_device_desc* %13, %struct.kvm_device_desc** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %8, align 4
  %16 = add i32 %14, %15
  %17 = load %struct.kvm_device_desc*, %struct.kvm_device_desc** %9, align 8
  %18 = getelementptr inbounds %struct.kvm_device_desc, %struct.kvm_device_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ugt i32 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.kvm_device_desc*, %struct.kvm_device_desc** %9, align 8
  %24 = call i64 @kvm_vq_configspace(%struct.kvm_device_desc* %23)
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @memcpy(i64 %27, i8* %28, i32 %29)
  ret void
}

declare dso_local %struct.TYPE_2__* @to_kvmdev(%struct.virtio_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i64 @kvm_vq_configspace(%struct.kvm_device_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
