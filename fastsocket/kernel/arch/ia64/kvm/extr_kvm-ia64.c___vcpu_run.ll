; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c___vcpu_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c___vcpu_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%union.context*, %union.context*)* }
%union.context = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.kvm_run = type { i32 }

@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@KVM_EXIT_INTR = common dso_local global i32 0, align 4
@KVM_REQ_KICK = common dso_local global i32 0, align 4
@kvm_vmm_info = common dso_local global %struct.TYPE_6__* null, align 8
@KVM_EXIT_FAIL_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_run*)* @__vcpu_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vcpu_run(%struct.kvm_vcpu* %0, %struct.kvm_run* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_run*, align 8
  %5 = alloca %union.context*, align 8
  %6 = alloca %union.context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_run* %1, %struct.kvm_run** %4, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call i32 @srcu_read_lock(i32* %12)
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %92, %80, %2
  %15 = load i32, i32* @current, align 4
  %16 = call i64 @signal_pending(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32, i32* @EINTR, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @KVM_EXIT_INTR, align 4
  %22 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %83

24:                                               ; preds = %14
  %25 = call i32 (...) @preempt_disable()
  %26 = call i32 (...) @local_irq_disable()
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = call %union.context* @kvm_get_host_context(%struct.kvm_vcpu* %27)
  store %union.context* %28, %union.context** %5, align 8
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %30 = call %union.context* @kvm_get_guest_context(%struct.kvm_vcpu* %29)
  store %union.context* %30, %union.context** %6, align 8
  %31 = load i32, i32* @KVM_REQ_KICK, align 4
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 1
  %34 = call i32 @clear_bit(i32 %31, i32* %33)
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = call i32 @kvm_vcpu_pre_transition(%struct.kvm_vcpu* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  br label %102

40:                                               ; preds = %24
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @srcu_read_unlock(i32* %44, i32 %45)
  %47 = call i32 (...) @kvm_guest_enter()
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kvm_vmm_info, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32 (%union.context*, %union.context*)*, i32 (%union.context*, %union.context*)** %49, align 8
  %51 = load %union.context*, %union.context** %5, align 8
  %52 = load %union.context*, %union.context** %6, align 8
  %53 = call i32 %50(%union.context* %51, %union.context* %52)
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %55 = call i32 @kvm_vcpu_post_transition(%struct.kvm_vcpu* %54)
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %57 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* @KVM_REQ_KICK, align 4
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 1
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  %63 = call i32 (...) @local_irq_enable()
  %64 = call i32 (...) @barrier()
  %65 = call i32 (...) @kvm_guest_exit()
  %66 = call i32 (...) @preempt_enable()
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = call i32 @srcu_read_lock(i32* %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %74 = call i32 @kvm_handle_exit(%struct.kvm_run* %72, %struct.kvm_vcpu* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %40
  %78 = call i32 (...) @need_resched()
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  br label %14

81:                                               ; preds = %77
  br label %82

82:                                               ; preds = %81, %40
  br label %83

83:                                               ; preds = %102, %82, %18
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %85 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @srcu_read_unlock(i32* %87, i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %83
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %94 = call i32 @kvm_resched(%struct.kvm_vcpu* %93)
  %95 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %96 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = call i32 @srcu_read_lock(i32* %98)
  store i32 %99, i32* %8, align 4
  br label %14

100:                                              ; preds = %83
  %101 = load i32, i32* %7, align 4
  ret i32 %101

102:                                              ; preds = %39
  %103 = call i32 (...) @local_irq_enable()
  %104 = call i32 (...) @preempt_enable()
  %105 = load i32, i32* @KVM_EXIT_FAIL_ENTRY, align 4
  %106 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %107 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %83
}

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local %union.context* @kvm_get_host_context(%struct.kvm_vcpu*) #1

declare dso_local %union.context* @kvm_get_guest_context(%struct.kvm_vcpu*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kvm_vcpu_pre_transition(%struct.kvm_vcpu*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @kvm_guest_enter(...) #1

declare dso_local i32 @kvm_vcpu_post_transition(%struct.kvm_vcpu*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @kvm_guest_exit(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @kvm_handle_exit(%struct.kvm_run*, %struct.kvm_vcpu*) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i32 @kvm_resched(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
