; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_emulator_write_emulated_onepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_emulator_write_emulated_onepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, i32, i32, i32, i32 }

@UNMAPPED_GVA = common dso_local global i32 0, align 4
@X86EMUL_PROPAGATE_FAULT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@APIC_DEFAULT_PHYS_BASE = common dso_local global i32 0, align 4
@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@KVM_TRACE_MMIO_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32, %struct.kvm_vcpu*)* @emulator_write_emulated_onepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulator_write_emulated_onepage(i64 %0, i8* %1, i32 %2, %struct.kvm_vcpu* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_vcpu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.kvm_vcpu* %3, %struct.kvm_vcpu** %9, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @kvm_mmu_gva_to_gpa_write(%struct.kvm_vcpu* %12, i64 %13, i32* %11)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @UNMAPPED_GVA, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @kvm_inject_page_fault(%struct.kvm_vcpu* %19, i64 %20, i32 %21)
  %23 = load i32, i32* @X86EMUL_PROPAGATE_FAULT, align 4
  store i32 %23, i32* %5, align 4
  br label %75

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @PAGE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @APIC_DEFAULT_PHYS_BASE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %41

31:                                               ; preds = %24
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @emulator_write_phys(%struct.kvm_vcpu* %32, i32 %33, i8* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %39, i32* %5, align 4
  br label %75

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %30
  %42 = load i32, i32* @KVM_TRACE_MMIO_WRITE, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @trace_kvm_mmio(i32 %42, i32 %43, i32 %44, i32 %47)
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @vcpu_mmio_write(%struct.kvm_vcpu* %49, i32 %50, i32 %51, i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %41
  %56 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %56, i32* %5, align 4
  br label %75

57:                                               ; preds = %41
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %62 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %65 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %66, i32 0, i32 3
  store i32 1, i32* %67, align 4
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @memcpy(i32 %70, i8* %71, i32 %72)
  %74 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %57, %55, %38, %18
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @kvm_mmu_gva_to_gpa_write(%struct.kvm_vcpu*, i64, i32*) #1

declare dso_local i32 @kvm_inject_page_fault(%struct.kvm_vcpu*, i64, i32) #1

declare dso_local i64 @emulator_write_phys(%struct.kvm_vcpu*, i32, i8*, i32) #1

declare dso_local i32 @trace_kvm_mmio(i32, i32, i32, i32) #1

declare dso_local i32 @vcpu_mmio_write(%struct.kvm_vcpu*, i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
