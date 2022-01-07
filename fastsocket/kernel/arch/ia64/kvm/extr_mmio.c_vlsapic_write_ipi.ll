; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_mmio.c_vlsapic_write_ipi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_mmio.c_vlsapic_write_ipi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.exit_ctl_data }
%struct.exit_ctl_data = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.kvm_vcpu = type { i32 }

@current_vcpu = common dso_local global %struct.TYPE_13__* null, align 8
@EXIT_REASON_IPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i8*, i8*)* @vlsapic_write_ipi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlsapic_write_ipi(%struct.kvm_vcpu* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.exit_ctl_data*, align 8
  %8 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current_vcpu, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store %struct.exit_ctl_data* %11, %struct.exit_ctl_data** %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = load i32, i32* @EXIT_REASON_IPI, align 4
  %15 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %7, align 8
  %16 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %7, align 8
  %19 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i8* %17, i8** %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %7, align 8
  %25 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i8* %23, i8** %28, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current_vcpu, align 8
  %30 = call i32 @vmm_transition(%struct.TYPE_13__* %29)
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @local_irq_restore(i64 %31)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @vmm_transition(%struct.TYPE_13__*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
