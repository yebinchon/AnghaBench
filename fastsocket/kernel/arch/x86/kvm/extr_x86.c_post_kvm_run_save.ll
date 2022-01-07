; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_post_kvm_run_save.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_post_kvm_run_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { i32, %struct.kvm_run* }
%struct.kvm_run = type { i32, i32, i32, i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@X86_EFLAGS_IF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @post_kvm_run_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @post_kvm_run_save(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_run*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %4, i32 0, i32 1
  %6 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  store %struct.kvm_run* %6, %struct.kvm_run** %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %8, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = call i32 %9(%struct.kvm_vcpu* %10)
  %12 = load i32, i32* @X86_EFLAGS_IF, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %19 = call i32 @kvm_get_cr8(%struct.kvm_vcpu* %18)
  %20 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %21 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %23 = call i32 @kvm_get_apic_base(%struct.kvm_vcpu* %22)
  %24 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %25 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @irqchip_in_kernel(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %33 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  br label %52

34:                                               ; preds = %1
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %36 = call i64 @kvm_arch_interrupt_allowed(%struct.kvm_vcpu* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %40 = call i32 @kvm_cpu_has_interrupt(%struct.kvm_vcpu* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %44 = call i32 @kvm_event_needs_reinjection(%struct.kvm_vcpu* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %42, %38, %34
  %48 = phi i1 [ false, %38 ], [ false, %34 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  %50 = load %struct.kvm_run*, %struct.kvm_run** %3, align 8
  %51 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %31
  ret void
}

declare dso_local i32 @kvm_get_cr8(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_get_apic_base(%struct.kvm_vcpu*) #1

declare dso_local i64 @irqchip_in_kernel(i32) #1

declare dso_local i64 @kvm_arch_interrupt_allowed(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_cpu_has_interrupt(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_event_needs_reinjection(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
