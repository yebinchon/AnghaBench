; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_ept_update_paging_mode_cr4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_ept_update_paging_mode_cr4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@X86_CR4_PAE = common dso_local global i64 0, align 8
@X86_CR4_PSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, %struct.kvm_vcpu*)* @ept_update_paging_mode_cr4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ept_update_paging_mode_cr4(i64* %0, %struct.kvm_vcpu* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  store i64* %0, i64** %3, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %4, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %6 = call i32 @is_paging(%struct.kvm_vcpu* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* @X86_CR4_PAE, align 8
  %10 = xor i64 %9, -1
  %11 = load i64*, i64** %3, align 8
  %12 = load i64, i64* %11, align 8
  %13 = and i64 %12, %10
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* @X86_CR4_PSE, align 8
  %15 = load i64*, i64** %3, align 8
  %16 = load i64, i64* %15, align 8
  %17 = or i64 %16, %14
  store i64 %17, i64* %15, align 8
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @X86_CR4_PAE, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = load i64, i64* @X86_CR4_PAE, align 8
  %28 = xor i64 %27, -1
  %29 = load i64*, i64** %3, align 8
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %30, %28
  store i64 %31, i64* %29, align 8
  br label %32

32:                                               ; preds = %26, %18
  br label %33

33:                                               ; preds = %32, %8
  ret void
}

declare dso_local i32 @is_paging(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
