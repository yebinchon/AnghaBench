; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_init_vm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_init_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@GUEST_PHYSICAL_RR0 = common dso_local global i32 0, align 4
@GUEST_PHYSICAL_RR4 = common dso_local global i32 0, align 4
@VMM_INIT_RR = common dso_local global i32 0, align 4
@KVM_USERSPACE_IRQ_SOURCE_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*)* @kvm_init_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_init_vm(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %3 = load %struct.kvm*, %struct.kvm** %2, align 8
  %4 = icmp ne %struct.kvm* %3, null
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i32 @BUG_ON(i32 %6)
  %8 = load i32, i32* @GUEST_PHYSICAL_RR0, align 4
  %9 = load %struct.kvm*, %struct.kvm** %2, align 8
  %10 = getelementptr inbounds %struct.kvm, %struct.kvm* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @GUEST_PHYSICAL_RR4, align 4
  %13 = load %struct.kvm*, %struct.kvm** %2, align 8
  %14 = getelementptr inbounds %struct.kvm, %struct.kvm* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @VMM_INIT_RR, align 4
  %17 = load %struct.kvm*, %struct.kvm** %2, align 8
  %18 = getelementptr inbounds %struct.kvm, %struct.kvm* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 4
  %20 = load %struct.kvm*, %struct.kvm** %2, align 8
  %21 = call i32 @kvm_build_io_pmt(%struct.kvm* %20)
  %22 = load %struct.kvm*, %struct.kvm** %2, align 8
  %23 = getelementptr inbounds %struct.kvm, %struct.kvm* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load i32, i32* @KVM_USERSPACE_IRQ_SOURCE_ID, align 4
  %27 = load %struct.kvm*, %struct.kvm** %2, align 8
  %28 = getelementptr inbounds %struct.kvm, %struct.kvm* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @set_bit(i32 %26, i32* %29)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kvm_build_io_pmt(%struct.kvm*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
