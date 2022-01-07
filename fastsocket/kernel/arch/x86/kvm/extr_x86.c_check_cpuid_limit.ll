; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_check_cpuid_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_check_cpuid_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_cpuid_entry2 = type { i32 }
%struct.kvm_vcpu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_cpuid_entry2* (%struct.kvm_vcpu*, i32, i32)* @check_cpuid_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_cpuid_entry2* @check_cpuid_limit(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_cpuid_entry2*, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_cpuid_entry2*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, -2147483648
  %12 = call %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(%struct.kvm_vcpu* %9, i32 %11, i32 0)
  store %struct.kvm_cpuid_entry2* %12, %struct.kvm_cpuid_entry2** %8, align 8
  %13 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %8, align 8
  %14 = icmp ne %struct.kvm_cpuid_entry2* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %8, align 8
  %17 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %3
  store %struct.kvm_cpuid_entry2* null, %struct.kvm_cpuid_entry2** %4, align 8
  br label %40

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, -2147483648
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %28 = call %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(%struct.kvm_vcpu* %27, i32 0, i32 0)
  store %struct.kvm_cpuid_entry2* %28, %struct.kvm_cpuid_entry2** %8, align 8
  %29 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %8, align 8
  %30 = icmp ne %struct.kvm_cpuid_entry2* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store %struct.kvm_cpuid_entry2* null, %struct.kvm_cpuid_entry2** %4, align 8
  br label %40

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %22
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %35 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %8, align 8
  %36 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(%struct.kvm_vcpu* %34, i32 %37, i32 %38)
  store %struct.kvm_cpuid_entry2* %39, %struct.kvm_cpuid_entry2** %4, align 8
  br label %40

40:                                               ; preds = %33, %31, %21
  %41 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  ret %struct.kvm_cpuid_entry2* %41
}

declare dso_local %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
