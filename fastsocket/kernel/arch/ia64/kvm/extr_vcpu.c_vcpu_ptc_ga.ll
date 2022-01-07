; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_vcpu_ptc_ga.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_vcpu_ptc_ga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.exit_ctl_data }
%struct.exit_ctl_data = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i32 }

@EXIT_REASON_PTC_G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcpu_ptc_ga(%struct.kvm_vcpu* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.exit_ctl_data*, align 8
  %8 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.exit_ctl_data* %11, %struct.exit_ctl_data** %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = load i32, i32* @EXIT_REASON_PTC_G, align 4
  %15 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %7, align 8
  %16 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @vcpu_get_rr(%struct.kvm_vcpu* %17, i8* %18)
  %20 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %7, align 8
  %21 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i32 %19, i32* %23, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %7, align 8
  %26 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store i8* %24, i8** %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %7, align 8
  %31 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i8* %29, i8** %33, align 8
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %35 = call i32 @vmm_transition(%struct.kvm_vcpu* %34)
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @vcpu_ptc_l(%struct.kvm_vcpu* %36, i8* %37, i8* %38)
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @local_irq_restore(i64 %40)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @vcpu_get_rr(%struct.kvm_vcpu*, i8*) #1

declare dso_local i32 @vmm_transition(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_ptc_l(%struct.kvm_vcpu*, i8*, i8*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
