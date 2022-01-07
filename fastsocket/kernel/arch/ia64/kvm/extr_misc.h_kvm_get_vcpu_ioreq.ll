; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_misc.h_kvm_get_vcpu_ioreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_misc.h_kvm_get_vcpu_ioreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mmio_req = type { i32 }
%struct.kvm_vcpu = type { i32 }
%struct.exit_ctl_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_mmio_req }

@EXIT_REASON_MMIO_INSTRUCTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_mmio_req* (%struct.kvm_vcpu*)* @kvm_get_vcpu_ioreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_mmio_req* @kvm_get_vcpu_ioreq(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_mmio_req*, align 8
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.exit_ctl_data*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = icmp ne %struct.kvm_vcpu* %5, null
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call %struct.exit_ctl_data* @kvm_get_exit_data(%struct.kvm_vcpu* %8)
  store %struct.exit_ctl_data* %9, %struct.exit_ctl_data** %4, align 8
  %10 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %4, align 8
  %11 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EXIT_REASON_MMIO_INSTRUCTION, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %4, align 8
  %17 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.kvm_mmio_req* %18, %struct.kvm_mmio_req** %2, align 8
  br label %21

19:                                               ; preds = %7
  br label %20

20:                                               ; preds = %19, %1
  store %struct.kvm_mmio_req* null, %struct.kvm_mmio_req** %2, align 8
  br label %21

21:                                               ; preds = %20, %15
  %22 = load %struct.kvm_mmio_req*, %struct.kvm_mmio_req** %2, align 8
  ret %struct.kvm_mmio_req* %22
}

declare dso_local %struct.exit_ctl_data* @kvm_get_exit_data(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
