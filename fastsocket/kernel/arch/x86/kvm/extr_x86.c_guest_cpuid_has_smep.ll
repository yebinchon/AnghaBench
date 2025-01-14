; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_guest_cpuid_has_smep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_guest_cpuid_has_smep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_cpuid_entry2 = type { i32 }

@X86_FEATURE_SMEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @guest_cpuid_has_smep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guest_cpuid_has_smep(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_cpuid_entry2*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(%struct.kvm_vcpu* %4, i32 7, i32 0)
  store %struct.kvm_cpuid_entry2* %5, %struct.kvm_cpuid_entry2** %3, align 8
  %6 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %3, align 8
  %7 = icmp ne %struct.kvm_cpuid_entry2* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @X86_FEATURE_SMEP, align 4
  %13 = call i32 @bit(i32 %12)
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %8, %1
  %17 = phi i1 [ false, %1 ], [ %15, %8 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
