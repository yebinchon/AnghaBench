; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_reexecute_instruction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_reexecute_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@tdp_enabled = common dso_local global i64 0, align 8
@UNMAPPED_GVA = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @reexecute_instruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reexecute_instruction(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @tdp_enabled, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

10:                                               ; preds = %2
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @kvm_mmu_unprotect_page_virt(%struct.kvm_vcpu* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %36

16:                                               ; preds = %10
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @kvm_mmu_gva_to_gpa_system(%struct.kvm_vcpu* %17, i32 %18, i32* null)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @UNMAPPED_GVA, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %36

24:                                               ; preds = %16
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @PAGE_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = call i32 @gfn_to_hva(i32 %27, i32 %30)
  %32 = call i32 @kvm_is_error_hva(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %36

35:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %34, %23, %15, %9
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @kvm_mmu_unprotect_page_virt(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_mmu_gva_to_gpa_system(%struct.kvm_vcpu*, i32, i32*) #1

declare dso_local i32 @kvm_is_error_hva(i32) #1

declare dso_local i32 @gfn_to_hva(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
