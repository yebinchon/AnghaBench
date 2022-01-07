; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/kvm/extr_kvm_virtio.c_kvm_set_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/kvm/extr_kvm_virtio.c_kvm_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@KVM_S390_VIRTIO_SET_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*, i64)* @kvm_set_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_set_status(%struct.virtio_device* %0, i64 %1) #0 {
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca i64, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %12 = call %struct.TYPE_4__* @to_kvmdev(%struct.virtio_device* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i64 %10, i64* %15, align 8
  %16 = load i32, i32* @KVM_S390_VIRTIO_SET_STATUS, align 4
  %17 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %18 = call %struct.TYPE_4__* @to_kvmdev(%struct.virtio_device* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = ptrtoint %struct.TYPE_3__* %20 to i64
  %22 = call i32 @kvm_hypercall1(i32 %16, i64 %21)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_4__* @to_kvmdev(%struct.virtio_device*) #1

declare dso_local i32 @kvm_hypercall1(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
