; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_set_efer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_set_efer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.kvm_vcpu*, i32)* }
%struct.kvm_vcpu = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.kvm_cpuid_entry2 = type { i32, i32 }

@efer_reserved_bits = common dso_local global i32 0, align 4
@EFER_LME = common dso_local global i32 0, align 4
@EFER_FFXSR = common dso_local global i32 0, align 4
@X86_FEATURE_FXSR_OPT = common dso_local global i32 0, align 4
@EFER_SVME = common dso_local global i32 0, align 4
@X86_FEATURE_SVM = common dso_local global i32 0, align 4
@EFER_LMA = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_8__* null, align 8
@EFER_NX = common dso_local global i32 0, align 4
@tdp_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @set_efer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_efer(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_cpuid_entry2*, align 8
  %7 = alloca %struct.kvm_cpuid_entry2*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @efer_reserved_bits, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %110

13:                                               ; preds = %2
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %15 = call i64 @is_paging(%struct.kvm_vcpu* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EFER_LME, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @EFER_LME, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %110

29:                                               ; preds = %17, %13
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @EFER_FFXSR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %36 = call %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(%struct.kvm_vcpu* %35, i32 -2147483647, i32 0)
  store %struct.kvm_cpuid_entry2* %36, %struct.kvm_cpuid_entry2** %6, align 8
  %37 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %6, align 8
  %38 = icmp ne %struct.kvm_cpuid_entry2* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %6, align 8
  %41 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @X86_FEATURE_FXSR_OPT, align 4
  %44 = call i32 @bit(i32 %43)
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39, %34
  store i32 1, i32* %3, align 4
  br label %110

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @EFER_SVME, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %56 = call %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(%struct.kvm_vcpu* %55, i32 -2147483647, i32 0)
  store %struct.kvm_cpuid_entry2* %56, %struct.kvm_cpuid_entry2** %7, align 8
  %57 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %7, align 8
  %58 = icmp ne %struct.kvm_cpuid_entry2* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %7, align 8
  %61 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @X86_FEATURE_SVM, align 4
  %64 = call i32 @bit(i32 %63)
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %59, %54
  store i32 1, i32* %3, align 4
  br label %110

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %49
  %70 = load i32, i32* @EFER_LMA, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %75 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @EFER_LMA, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %83, align 8
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 %84(%struct.kvm_vcpu* %85, i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %90 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @EFER_NX, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %69
  %97 = load i32, i32* @tdp_enabled, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  br label %100

100:                                              ; preds = %96, %69
  %101 = phi i1 [ false, %69 ], [ %99, %96 ]
  %102 = zext i1 %101 to i32
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %104 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i32 %102, i32* %107, align 4
  %108 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %109 = call i32 @kvm_mmu_reset_context(%struct.kvm_vcpu* %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %100, %67, %47, %28, %12
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i64 @is_paging(%struct.kvm_vcpu*) #1

declare dso_local %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @bit(i32) #1

declare dso_local i32 @kvm_mmu_reset_context(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
