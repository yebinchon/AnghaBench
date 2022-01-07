; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_set_cr3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_set_cr3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@enable_ept = common dso_local global i64 0, align 8
@EPT_POINTER = common dso_local global i32 0, align 4
@GUEST_CR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i64)* @vmx_set_cr3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_set_cr3(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* @enable_ept, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @construct_eptp(i64 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @EPT_POINTER, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @vmcs_write64(i32 %13, i32 %14)
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = call i64 @is_paging(%struct.kvm_vcpu* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  br label %31

24:                                               ; preds = %10
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  br label %31

31:                                               ; preds = %24, %19
  %32 = phi i64 [ %23, %19 ], [ %30, %24 ]
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %31, %2
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = call i32 @vmx_flush_tlb(%struct.kvm_vcpu* %34)
  %36 = load i32, i32* @GUEST_CR3, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @vmcs_writel(i32 %36, i64 %37)
  ret void
}

declare dso_local i32 @construct_eptp(i64) #1

declare dso_local i32 @vmcs_write64(i32, i32) #1

declare dso_local i64 @is_paging(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmx_flush_tlb(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
