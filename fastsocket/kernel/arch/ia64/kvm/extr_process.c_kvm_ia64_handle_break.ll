; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_process.c_kvm_ia64_handle_break.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_process.c_kvm_ia64_handle_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_pt_regs = type { i32 }
%struct.TYPE_2__ = type { i64 }

@current_vcpu = common dso_local global %struct.kvm_vcpu* null, align 8
@DOMN_PAL_REQUEST = common dso_local global i64 0, align 8
@DOMN_SAL_REQUEST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_ia64_handle_break(i64 %0, %struct.kvm_pt_regs* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm_pt_regs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.kvm_vcpu*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.kvm_pt_regs* %1, %struct.kvm_pt_regs** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** @current_vcpu, align 8
  store %struct.kvm_vcpu* %11, %struct.kvm_vcpu** %9, align 8
  %12 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %6, align 8
  %13 = call %struct.TYPE_2__* @ia64_psr(%struct.kvm_pt_regs* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @DOMN_PAL_REQUEST, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @local_irq_save(i64 %22)
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %25 = call i32 @set_pal_call_data(%struct.kvm_vcpu* %24)
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %27 = call i32 @vmm_transition(%struct.kvm_vcpu* %26)
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %29 = call i32 @get_pal_call_result(%struct.kvm_vcpu* %28)
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %31 = call i32 @vcpu_increment_iip(%struct.kvm_vcpu* %30)
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @local_irq_restore(i64 %32)
  br label %59

34:                                               ; preds = %17
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @DOMN_SAL_REQUEST, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @local_irq_save(i64 %39)
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %42 = call i32 @set_sal_call_data(%struct.kvm_vcpu* %41)
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %44 = call i32 @vmm_transition(%struct.kvm_vcpu* %43)
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %46 = call i32 @get_sal_call_result(%struct.kvm_vcpu* %45)
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %48 = call i32 @vcpu_increment_iip(%struct.kvm_vcpu* %47)
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @local_irq_restore(i64 %49)
  br label %59

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %4
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %6, align 8
  %58 = call i32 @reflect_interruption(i64 %54, i64 %55, i64 %56, i32 11, %struct.kvm_pt_regs* %57)
  br label %59

59:                                               ; preds = %53, %38, %21
  ret void
}

declare dso_local %struct.TYPE_2__* @ia64_psr(%struct.kvm_pt_regs*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @set_pal_call_data(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmm_transition(%struct.kvm_vcpu*) #1

declare dso_local i32 @get_pal_call_result(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_increment_iip(%struct.kvm_vcpu*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @set_sal_call_data(%struct.kvm_vcpu*) #1

declare dso_local i32 @get_sal_call_result(%struct.kvm_vcpu*) #1

declare dso_local i32 @reflect_interruption(i64, i64, i64, i32, %struct.kvm_pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
