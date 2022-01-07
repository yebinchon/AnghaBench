; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/kvm/extr_kvm_virtio.c_kvm_find_vq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/kvm/extr_kvm_virtio.c_kvm_find_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.kvm_vqconfig* }
%struct.kvm_vqconfig = type { i32, i64, i64 }
%struct.virtio_device = type { i32 }
%struct.kvm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@KVM_S390_VIRTIO_RING_ALIGN = common dso_local global i32 0, align 4
@kvm_notify = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.virtqueue* (%struct.virtio_device*, i32, void (%struct.virtqueue*)*, i8*)* @kvm_find_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.virtqueue* @kvm_find_vq(%struct.virtio_device* %0, i32 %1, void (%struct.virtqueue*)* %2, i8* %3) #0 {
  %5 = alloca %struct.virtqueue*, align 8
  %6 = alloca %struct.virtio_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (%struct.virtqueue*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.kvm_device*, align 8
  %11 = alloca %struct.kvm_vqconfig*, align 8
  %12 = alloca %struct.virtqueue*, align 8
  %13 = alloca i32, align 4
  store %struct.virtio_device* %0, %struct.virtio_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store void (%struct.virtqueue*)* %2, void (%struct.virtqueue*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.virtio_device*, %struct.virtio_device** %6, align 8
  %15 = call %struct.kvm_device* @to_kvmdev(%struct.virtio_device* %14)
  store %struct.kvm_device* %15, %struct.kvm_device** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.kvm_device*, %struct.kvm_device** %10, align 8
  %18 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp uge i32 %16, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.virtqueue* @ERR_PTR(i32 %25)
  store %struct.virtqueue* %26, %struct.virtqueue** %5, align 8
  br label %88

27:                                               ; preds = %4
  %28 = load %struct.kvm_device*, %struct.kvm_device** %10, align 8
  %29 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = call %struct.kvm_vqconfig* @kvm_vq_config(%struct.TYPE_2__* %30)
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.kvm_vqconfig, %struct.kvm_vqconfig* %31, i64 %33
  store %struct.kvm_vqconfig* %34, %struct.kvm_vqconfig** %11, align 8
  %35 = load %struct.kvm_vqconfig*, %struct.kvm_vqconfig** %11, align 8
  %36 = getelementptr inbounds %struct.kvm_vqconfig, %struct.kvm_vqconfig* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.kvm_vqconfig*, %struct.kvm_vqconfig** %11, align 8
  %39 = getelementptr inbounds %struct.kvm_vqconfig, %struct.kvm_vqconfig* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @KVM_S390_VIRTIO_RING_ALIGN, align 4
  %42 = call i32 @vring_size(i32 %40, i32 %41)
  %43 = call i32 @vmem_add_mapping(i64 %37, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  br label %85

47:                                               ; preds = %27
  %48 = load %struct.kvm_vqconfig*, %struct.kvm_vqconfig** %11, align 8
  %49 = getelementptr inbounds %struct.kvm_vqconfig, %struct.kvm_vqconfig* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @KVM_S390_VIRTIO_RING_ALIGN, align 4
  %52 = load %struct.virtio_device*, %struct.virtio_device** %6, align 8
  %53 = load %struct.kvm_vqconfig*, %struct.kvm_vqconfig** %11, align 8
  %54 = getelementptr inbounds %struct.kvm_vqconfig, %struct.kvm_vqconfig* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load i32, i32* @kvm_notify, align 4
  %58 = load void (%struct.virtqueue*)*, void (%struct.virtqueue*)** %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call %struct.virtqueue* @vring_new_virtqueue(i32 %50, i32 %51, %struct.virtio_device* %52, i8* %56, i32 %57, void (%struct.virtqueue*)* %58, i8* %59)
  store %struct.virtqueue* %60, %struct.virtqueue** %12, align 8
  %61 = load %struct.virtqueue*, %struct.virtqueue** %12, align 8
  %62 = icmp ne %struct.virtqueue* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %47
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %13, align 4
  br label %75

66:                                               ; preds = %47
  %67 = load %struct.virtqueue*, %struct.virtqueue** %12, align 8
  %68 = ptrtoint %struct.virtqueue* %67 to i64
  %69 = load %struct.kvm_vqconfig*, %struct.kvm_vqconfig** %11, align 8
  %70 = getelementptr inbounds %struct.kvm_vqconfig, %struct.kvm_vqconfig* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  %71 = load %struct.kvm_vqconfig*, %struct.kvm_vqconfig** %11, align 8
  %72 = load %struct.virtqueue*, %struct.virtqueue** %12, align 8
  %73 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %72, i32 0, i32 0
  store %struct.kvm_vqconfig* %71, %struct.kvm_vqconfig** %73, align 8
  %74 = load %struct.virtqueue*, %struct.virtqueue** %12, align 8
  store %struct.virtqueue* %74, %struct.virtqueue** %5, align 8
  br label %88

75:                                               ; preds = %63
  %76 = load %struct.kvm_vqconfig*, %struct.kvm_vqconfig** %11, align 8
  %77 = getelementptr inbounds %struct.kvm_vqconfig, %struct.kvm_vqconfig* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.kvm_vqconfig*, %struct.kvm_vqconfig** %11, align 8
  %80 = getelementptr inbounds %struct.kvm_vqconfig, %struct.kvm_vqconfig* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @KVM_S390_VIRTIO_RING_ALIGN, align 4
  %83 = call i32 @vring_size(i32 %81, i32 %82)
  %84 = call i32 @vmem_remove_mapping(i64 %78, i32 %83)
  br label %85

85:                                               ; preds = %75, %46
  %86 = load i32, i32* %13, align 4
  %87 = call %struct.virtqueue* @ERR_PTR(i32 %86)
  store %struct.virtqueue* %87, %struct.virtqueue** %5, align 8
  br label %88

88:                                               ; preds = %85, %66, %23
  %89 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  ret %struct.virtqueue* %89
}

declare dso_local %struct.kvm_device* @to_kvmdev(%struct.virtio_device*) #1

declare dso_local %struct.virtqueue* @ERR_PTR(i32) #1

declare dso_local %struct.kvm_vqconfig* @kvm_vq_config(%struct.TYPE_2__*) #1

declare dso_local i32 @vmem_add_mapping(i64, i32) #1

declare dso_local i32 @vring_size(i32, i32) #1

declare dso_local %struct.virtqueue* @vring_new_virtqueue(i32, i32, %struct.virtio_device*, i8*, i32, void (%struct.virtqueue*)*, i8*) #1

declare dso_local i32 @vmem_remove_mapping(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
