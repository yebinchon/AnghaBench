; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_process.c_set_sal_call_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_process.c_set_sal_call_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.exit_ctl_data }
%struct.exit_ctl_data = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@EXIT_REASON_SAL_CALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @set_sal_call_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_sal_call_data(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.exit_ctl_data*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store %struct.exit_ctl_data* %6, %struct.exit_ctl_data** %3, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = call i8* @vcpu_get_gr(%struct.kvm_vcpu* %7, i32 32)
  %9 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %3, align 8
  %10 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 7
  store i8* %8, i8** %12, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %14 = call i8* @vcpu_get_gr(%struct.kvm_vcpu* %13, i32 33)
  %15 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %3, align 8
  %16 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 6
  store i8* %14, i8** %18, align 8
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %20 = call i8* @vcpu_get_gr(%struct.kvm_vcpu* %19, i32 34)
  %21 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %3, align 8
  %22 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 5
  store i8* %20, i8** %24, align 8
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %26 = call i8* @vcpu_get_gr(%struct.kvm_vcpu* %25, i32 35)
  %27 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %3, align 8
  %28 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  store i8* %26, i8** %30, align 8
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %32 = call i8* @vcpu_get_gr(%struct.kvm_vcpu* %31, i32 36)
  %33 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %3, align 8
  %34 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  store i8* %32, i8** %36, align 8
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %38 = call i8* @vcpu_get_gr(%struct.kvm_vcpu* %37, i32 37)
  %39 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %3, align 8
  %40 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i8* %38, i8** %42, align 8
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %44 = call i8* @vcpu_get_gr(%struct.kvm_vcpu* %43, i32 38)
  %45 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %3, align 8
  %46 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i8* %44, i8** %48, align 8
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %50 = call i8* @vcpu_get_gr(%struct.kvm_vcpu* %49, i32 39)
  %51 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %3, align 8
  %52 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i8* %50, i8** %54, align 8
  %55 = load i32, i32* @EXIT_REASON_SAL_CALL, align 4
  %56 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %3, align 8
  %57 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  ret void
}

declare dso_local i8* @vcpu_get_gr(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
