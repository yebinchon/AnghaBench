; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_emulator_read_emulated.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_emulator_read_emulated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, i32, i32, i64, i64, i32 }

@KVM_TRACE_MMIO_READ = common dso_local global i32 0, align 4
@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@UNMAPPED_GVA = common dso_local global i32 0, align 4
@X86EMUL_PROPAGATE_FAULT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@APIC_DEFAULT_PHYS_BASE = common dso_local global i32 0, align 4
@KVM_TRACE_MMIO_READ_UNSATISFIED = common dso_local global i32 0, align 4
@X86EMUL_UNHANDLEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32, %struct.kvm_vcpu*)* @emulator_read_emulated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulator_read_emulated(i64 %0, i8* %1, i32 %2, %struct.kvm_vcpu* %3) #0 {
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
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @memcpy(i8* %17, i32 %20, i32 %21)
  %23 = load i32, i32* @KVM_TRACE_MMIO_READ, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @trace_kvm_mmio(i32 %23, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %34, i32* %5, align 4
  br label %98

35:                                               ; preds = %4
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @kvm_mmu_gva_to_gpa_read(%struct.kvm_vcpu* %36, i64 %37, i32* %11)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @UNMAPPED_GVA, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @kvm_inject_page_fault(%struct.kvm_vcpu* %43, i64 %44, i32 %45)
  %47 = load i32, i32* @X86EMUL_PROPAGATE_FAULT, align 4
  store i32 %47, i32* %5, align 4
  br label %98

48:                                               ; preds = %35
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @PAGE_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @APIC_DEFAULT_PHYS_BASE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %66

55:                                               ; preds = %48
  %56 = load i64, i64* %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %60 = call i32 @kvm_read_guest_virt(i64 %56, i8* %57, i32 %58, %struct.kvm_vcpu* %59, i32* null)
  %61 = load i32, i32* @X86EMUL_CONTINUE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %64, i32* %5, align 4
  br label %98

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %54
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @vcpu_mmio_read(%struct.kvm_vcpu* %67, i32 %68, i32 %69, i8* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @KVM_TRACE_MMIO_READ, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @trace_kvm_mmio(i32 %74, i32 %75, i32 %76, i32 %79)
  %81 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %81, i32* %5, align 4
  br label %98

82:                                               ; preds = %66
  %83 = load i32, i32* @KVM_TRACE_MMIO_READ_UNSATISFIED, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @trace_kvm_mmio(i32 %83, i32 %84, i32 %85, i32 0)
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %88 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %94 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %96 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %95, i32 0, i32 3
  store i64 0, i64* %96, align 8
  %97 = load i32, i32* @X86EMUL_UNHANDLEABLE, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %82, %73, %63, %42, %16
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @trace_kvm_mmio(i32, i32, i32, i32) #1

declare dso_local i32 @kvm_mmu_gva_to_gpa_read(%struct.kvm_vcpu*, i64, i32*) #1

declare dso_local i32 @kvm_inject_page_fault(%struct.kvm_vcpu*, i64, i32) #1

declare dso_local i32 @kvm_read_guest_virt(i64, i8*, i32, %struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @vcpu_mmio_read(%struct.kvm_vcpu*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
