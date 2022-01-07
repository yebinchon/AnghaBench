; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_lguest_device.c_set_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_lguest_device.c_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@lguest_devices = common dso_local global i8* null, align 8
@LHCALL_NOTIFY = common dso_local global i32 0, align 4
@max_pfn = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*, i32)* @set_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_status(%struct.virtio_device* %0, i32 %1) #0 {
  %3 = alloca %struct.virtio_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %7 = call %struct.TYPE_4__* @to_lgdev(%struct.virtio_device* %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = bitcast %struct.TYPE_3__* %9 to i8*
  %11 = load i8*, i8** @lguest_devices, align 8
  %12 = ptrtoint i8* %10 to i64
  %13 = ptrtoint i8* %11 to i64
  %14 = sub i64 %12, %13
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %17 = call %struct.TYPE_4__* @to_lgdev(%struct.virtio_device* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %15, i32* %20, align 4
  %21 = load i32, i32* @LHCALL_NOTIFY, align 4
  %22 = load i64, i64* @max_pfn, align 8
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = shl i64 %22, %23
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %24, %25
  %27 = call i32 @kvm_hypercall1(i32 %21, i64 %26)
  ret void
}

declare dso_local %struct.TYPE_4__* @to_lgdev(%struct.virtio_device*) #1

declare dso_local i32 @kvm_hypercall1(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
