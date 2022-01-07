; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_set_cr0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_set_cr0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.kvm_vcpu*, i64)*, i32 (%struct.kvm_vcpu*, i32*, i32*)* }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32 }

@CR0_RESERVED_BITS = common dso_local global i64 0, align 8
@X86_CR0_ET = common dso_local global i64 0, align 8
@X86_CR0_NW = common dso_local global i64 0, align 8
@X86_CR0_CD = common dso_local global i64 0, align 8
@X86_CR0_PG = common dso_local global i64 0, align 8
@X86_CR0_PE = common dso_local global i64 0, align 8
@X86_CR4_PCIDE = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_4__* null, align 8
@EFER_LME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_set_cr0(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CR0_RESERVED_BITS, align 8
  %8 = and i64 %6, %7
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %83

11:                                               ; preds = %2
  %12 = load i64, i64* @X86_CR0_ET, align 8
  %13 = load i64, i64* %5, align 8
  %14 = or i64 %13, %12
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @X86_CR0_NW, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @X86_CR0_CD, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %83

25:                                               ; preds = %19, %11
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @X86_CR0_PG, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @X86_CR0_PE, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %83

36:                                               ; preds = %30, %25
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %38 = call i32 @is_paging(%struct.kvm_vcpu* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @X86_CR0_PG, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %47 = call i64 @is_pae(%struct.kvm_vcpu* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @load_pdptrs(%struct.kvm_vcpu* %50, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %83

58:                                               ; preds = %49, %45
  br label %59

59:                                               ; preds = %58, %40, %36
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @X86_CR0_PG, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %66 = load i32, i32* @X86_CR4_PCIDE, align 4
  %67 = call i64 @kvm_read_cr4_bits(%struct.kvm_vcpu* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %83

70:                                               ; preds = %64, %59
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32 (%struct.kvm_vcpu*, i64)*, i32 (%struct.kvm_vcpu*, i64)** %72, align 8
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %75 = load i64, i64* %5, align 8
  %76 = call i32 %73(%struct.kvm_vcpu* %74, i64 %75)
  %77 = load i64, i64* %5, align 8
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %79 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i64 %77, i64* %80, align 8
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %82 = call i32 @kvm_mmu_reset_context(%struct.kvm_vcpu* %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %70, %69, %57, %35, %24, %10
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @is_paging(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_pae(%struct.kvm_vcpu*) #1

declare dso_local i32 @load_pdptrs(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_read_cr4_bits(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_mmu_reset_context(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
