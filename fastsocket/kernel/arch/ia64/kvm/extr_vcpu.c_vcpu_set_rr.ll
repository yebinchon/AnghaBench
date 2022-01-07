; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_vcpu_set_rr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_vcpu_set_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64, i64, i64, %struct.exit_ctl_data }
%struct.exit_ctl_data = type { i32 }
%union.ia64_rr = type { i64 }

@VRN_SHIFT = common dso_local global i64 0, align 8
@EXIT_REASON_SWITCH_RR6 = common dso_local global i32 0, align 4
@IA64_NO_FAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vcpu_set_rr(%struct.kvm_vcpu* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.ia64_rr, align 8
  %8 = alloca %union.ia64_rr, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.exit_ctl_data*, align 8
  %11 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  store %struct.exit_ctl_data* %14, %struct.exit_ctl_data** %10, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @vcpu_get_rr(%struct.kvm_vcpu* %15, i64 %16)
  %18 = bitcast %union.ia64_rr* %7 to i64*
  store i64 %17, i64* %18, align 8
  %19 = load i64, i64* %6, align 8
  %20 = bitcast %union.ia64_rr* %8 to i64*
  store i64 %19, i64* %20, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @VRN_SHIFT, align 8
  %28 = lshr i64 %26, %27
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  store i64 %21, i64* %29, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @VRN_SHIFT, align 8
  %32 = lshr i64 %30, %31
  switch i64 %32, label %78 [
    i64 128, label %33
    i64 129, label %48
    i64 130, label %63
  ]

33:                                               ; preds = %3
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @vrrtomrr(i64 %34)
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %37 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i64 %35, i64* %38, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @local_irq_save(i64 %39)
  %41 = load i32, i32* @EXIT_REASON_SWITCH_RR6, align 4
  %42 = load %struct.exit_ctl_data*, %struct.exit_ctl_data** %10, align 8
  %43 = getelementptr inbounds %struct.exit_ctl_data, %struct.exit_ctl_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %45 = call i32 @vmm_transition(%struct.kvm_vcpu* %44)
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @local_irq_restore(i64 %46)
  br label %83

48:                                               ; preds = %3
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @vrrtomrr(i64 %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %53 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i64 %51, i64* %54, align 8
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %56 = call i32 @is_physical_mode(%struct.kvm_vcpu* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %48
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @ia64_set_rr(i64 %59, i64 %60)
  br label %62

62:                                               ; preds = %58, %48
  br label %83

63:                                               ; preds = %3
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @vrrtomrr(i64 %64)
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  store i64 %66, i64* %69, align 8
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %71 = call i32 @is_physical_mode(%struct.kvm_vcpu* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %63
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @ia64_set_rr(i64 %74, i64 %75)
  br label %77

77:                                               ; preds = %73, %63
  br label %83

78:                                               ; preds = %3
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i64 @vrrtomrr(i64 %80)
  %82 = call i32 @ia64_set_rr(i64 %79, i64 %81)
  br label %83

83:                                               ; preds = %78, %77, %62, %33
  %84 = load i64, i64* @IA64_NO_FAULT, align 8
  ret i64 %84
}

declare dso_local i64 @vcpu_get_rr(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @vrrtomrr(i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @vmm_transition(%struct.kvm_vcpu*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @is_physical_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @ia64_set_rr(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
