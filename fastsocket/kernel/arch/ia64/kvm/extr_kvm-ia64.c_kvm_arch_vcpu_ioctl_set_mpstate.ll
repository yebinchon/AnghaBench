; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_arch_vcpu_ioctl_set_mpstate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_arch_vcpu_ioctl_set_mpstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.kvm_mp_state = type { i64 }

@KVM_MP_STATE_UNINITIALIZED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_set_mpstate(%struct.kvm_vcpu* %0, %struct.kvm_mp_state* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_mp_state*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_mp_state* %1, %struct.kvm_mp_state** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call i32 @vcpu_load(%struct.kvm_vcpu* %6)
  %8 = load %struct.kvm_mp_state*, %struct.kvm_mp_state** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_mp_state, %struct.kvm_mp_state* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i64 %10, i64* %13, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @KVM_MP_STATE_UNINITIALIZED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = call i32 @vcpu_reset(%struct.kvm_vcpu* %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = call i32 @vcpu_put(%struct.kvm_vcpu* %24)
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_reset(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
