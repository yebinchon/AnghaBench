; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_switch_to_physical_rid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_switch_to_physical_rid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@VRN0 = common dso_local global i32 0, align 4
@VRN_SHIFT = common dso_local global i32 0, align 4
@VRN4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @switch_to_physical_rid(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = call i64 (...) @ia64_clear_ic()
  store i64 %4, i64* %3, align 8
  %5 = load i32, i32* @VRN0, align 4
  %6 = load i32, i32* @VRN_SHIFT, align 4
  %7 = shl i32 %5, %6
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ia64_set_rr(i32 %7, i32 %11)
  %13 = call i32 (...) @ia64_srlz_d()
  %14 = load i32, i32* @VRN4, align 4
  %15 = load i32, i32* @VRN_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ia64_set_rr(i32 %16, i32 %20)
  %22 = call i32 (...) @ia64_srlz_d()
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @ia64_set_psr(i64 %23)
  ret void
}

declare dso_local i64 @ia64_clear_ic(...) #1

declare dso_local i32 @ia64_set_rr(i32, i32) #1

declare dso_local i32 @ia64_srlz_d(...) #1

declare dso_local i32 @ia64_set_psr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
