; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_move_to_next_stateful_cpuid_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_move_to_next_stateful_cpuid_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.kvm_cpuid_entry2* }
%struct.kvm_cpuid_entry2 = type { i64, i32 }

@KVM_CPUID_FLAG_STATE_READ_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @move_to_next_stateful_cpuid_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_to_next_stateful_cpuid_entry(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_cpuid_entry2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_cpuid_entry2*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %12, i64 %14
  store %struct.kvm_cpuid_entry2* %15, %struct.kvm_cpuid_entry2** %5, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @KVM_CPUID_FLAG_STATE_READ_NEXT, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %5, align 8
  %23 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %51, %2
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %32, i64 %34
  store %struct.kvm_cpuid_entry2* %35, %struct.kvm_cpuid_entry2** %8, align 8
  %36 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %8, align 8
  %37 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %5, align 8
  %40 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %28
  %44 = load i32, i32* @KVM_CPUID_FLAG_STATE_READ_NEXT, align 4
  %45 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %8, align 8
  %46 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* %6, align 4
  ret i32 %49

50:                                               ; preds = %28
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* %7, align 4
  %55 = srem i32 %53, %54
  store i32 %55, i32* %6, align 4
  br label %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
