; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_set_cr3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_set_cr3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.kvm_vcpu.0*)* }
%struct.kvm_vcpu.0 = type opaque

@X86_CR4_PCIDE = common dso_local global i32 0, align 4
@CR3_PCID_ENABLED_RESERVED_BITS = common dso_local global i64 0, align 8
@CR3_L_MODE_RESERVED_BITS = common dso_local global i64 0, align 8
@CR3_PAE_RESERVED_BITS = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_set_cr3(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %6, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %14 = call i32 @pdptrs_changed(%struct.kvm_vcpu* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %18 = call i32 @kvm_mmu_sync_roots(%struct.kvm_vcpu* %17)
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = call i32 @kvm_mmu_flush_tlb(%struct.kvm_vcpu* %19)
  store i32 0, i32* %3, align 4
  br label %94

21:                                               ; preds = %12, %2
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %23 = call i64 @is_long_mode(%struct.kvm_vcpu* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %27 = load i32, i32* @X86_CR4_PCIDE, align 4
  %28 = call i64 @kvm_read_cr4_bits(%struct.kvm_vcpu* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @CR3_PCID_ENABLED_RESERVED_BITS, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %94

36:                                               ; preds = %30
  br label %44

37:                                               ; preds = %25
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @CR3_L_MODE_RESERVED_BITS, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %94

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %36
  br label %67

45:                                               ; preds = %21
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %47 = call i64 @is_pae(%struct.kvm_vcpu* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %45
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @CR3_PAE_RESERVED_BITS, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %94

55:                                               ; preds = %49
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %57 = call i64 @is_paging(%struct.kvm_vcpu* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @load_pdptrs(%struct.kvm_vcpu* %60, i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %94

65:                                               ; preds = %59, %55
  br label %66

66:                                               ; preds = %65, %45
  br label %67

67:                                               ; preds = %66, %44
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* @PAGE_SHIFT, align 8
  %73 = lshr i64 %71, %72
  %74 = call i32 @gfn_to_memslot(i32 %70, i64 %73)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  br label %94

81:                                               ; preds = %67
  %82 = load i64, i64* %5, align 8
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %84 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %87 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32 (%struct.kvm_vcpu.0*)*, i32 (%struct.kvm_vcpu.0*)** %89, align 8
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %92 = bitcast %struct.kvm_vcpu* %91 to %struct.kvm_vcpu.0*
  %93 = call i32 %90(%struct.kvm_vcpu.0* %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %81, %80, %64, %54, %42, %35, %16
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @pdptrs_changed(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mmu_sync_roots(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mmu_flush_tlb(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_long_mode(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_read_cr4_bits(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @is_pae(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_paging(%struct.kvm_vcpu*) #1

declare dso_local i32 @load_pdptrs(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gfn_to_memslot(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
