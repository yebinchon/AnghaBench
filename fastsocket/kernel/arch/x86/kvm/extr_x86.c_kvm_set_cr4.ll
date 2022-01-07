; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_set_cr4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_set_cr4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.kvm_vcpu*, i64)* }
%struct.kvm_vcpu = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@X86_CR4_PGE = common dso_local global i64 0, align 8
@X86_CR4_PSE = common dso_local global i64 0, align 8
@X86_CR4_PAE = common dso_local global i64 0, align 8
@X86_CR4_SMEP = common dso_local global i64 0, align 8
@CR4_RESERVED_BITS = common dso_local global i64 0, align 8
@X86_CR4_OSXSAVE = common dso_local global i64 0, align 8
@X86_CR4_RDWRGSFS = common dso_local global i64 0, align 8
@X86_CR4_PCIDE = common dso_local global i64 0, align 8
@X86_CR3_PCID_MASK = common dso_local global i32 0, align 4
@X86_CR4_VMXE = common dso_local global i64 0, align 8
@kvm_x86_ops = common dso_local global %struct.TYPE_8__* null, align 8
@tdp_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_set_cr4(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = call i64 @kvm_read_cr4(%struct.kvm_vcpu* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* @X86_CR4_PGE, align 8
  %11 = load i64, i64* @X86_CR4_PSE, align 8
  %12 = or i64 %10, %11
  %13 = load i64, i64* @X86_CR4_PAE, align 8
  %14 = or i64 %12, %13
  %15 = load i64, i64* @X86_CR4_SMEP, align 8
  %16 = or i64 %14, %15
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @CR4_RESERVED_BITS, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %163

22:                                               ; preds = %2
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = call i32 @guest_cpuid_has_xsave(%struct.kvm_vcpu* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @X86_CR4_OSXSAVE, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %163

32:                                               ; preds = %26, %22
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %34 = call i32 @guest_cpuid_has_smep(%struct.kvm_vcpu* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @X86_CR4_SMEP, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %163

42:                                               ; preds = %36, %32
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %44 = call i32 @guest_cpuid_has_fsgsbase(%struct.kvm_vcpu* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @X86_CR4_RDWRGSFS, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %163

52:                                               ; preds = %46, %42
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %54 = call i64 @is_long_mode(%struct.kvm_vcpu* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @X86_CR4_PAE, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %163

62:                                               ; preds = %56
  br label %89

63:                                               ; preds = %52
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %65 = call i64 @is_paging(%struct.kvm_vcpu* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @X86_CR4_PAE, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %67
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* %6, align 8
  %75 = xor i64 %73, %74
  %76 = load i64, i64* %7, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %82 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @load_pdptrs(%struct.kvm_vcpu* %80, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %163

88:                                               ; preds = %79, %72, %67, %63
  br label %89

89:                                               ; preds = %88, %62
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* @X86_CR4_PCIDE, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %89
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* @X86_CR4_PCIDE, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %118, label %99

99:                                               ; preds = %94
  %100 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %101 = call i32 @guest_cpuid_has_pcid(%struct.kvm_vcpu* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  store i32 1, i32* %3, align 4
  br label %163

104:                                              ; preds = %99
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @X86_CR3_PCID_MASK, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %104
  %113 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %114 = call i64 @is_long_mode(%struct.kvm_vcpu* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112, %104
  store i32 1, i32* %3, align 4
  br label %163

117:                                              ; preds = %112
  br label %118

118:                                              ; preds = %117, %94, %89
  %119 = load i64, i64* %5, align 8
  %120 = load i64, i64* @X86_CR4_VMXE, align 8
  %121 = and i64 %119, %120
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 1, i32* %3, align 4
  br label %163

124:                                              ; preds = %118
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kvm_x86_ops, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32 (%struct.kvm_vcpu*, i64)*, i32 (%struct.kvm_vcpu*, i64)** %126, align 8
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %129 = load i64, i64* %5, align 8
  %130 = call i32 %127(%struct.kvm_vcpu* %128, i64 %129)
  %131 = load i64, i64* %5, align 8
  %132 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %133 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  store i64 %131, i64* %134, align 8
  %135 = load i64, i64* %5, align 8
  %136 = load i64, i64* @X86_CR4_PGE, align 8
  %137 = and i64 %135, %136
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %124
  %140 = load i32, i32* @tdp_enabled, align 4
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  br label %143

143:                                              ; preds = %139, %124
  %144 = phi i1 [ false, %124 ], [ %142, %139 ]
  %145 = zext i1 %144 to i32
  %146 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %147 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  store i32 %145, i32* %150, align 8
  %151 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %152 = call i32 @kvm_mmu_reset_context(%struct.kvm_vcpu* %151)
  %153 = load i64, i64* %5, align 8
  %154 = load i64, i64* %6, align 8
  %155 = xor i64 %153, %154
  %156 = load i64, i64* @X86_CR4_OSXSAVE, align 8
  %157 = and i64 %155, %156
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %143
  %160 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %161 = call i32 @update_cpuid(%struct.kvm_vcpu* %160)
  br label %162

162:                                              ; preds = %159, %143
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %162, %123, %116, %103, %87, %61, %51, %41, %31, %21
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i64 @kvm_read_cr4(%struct.kvm_vcpu*) #1

declare dso_local i32 @guest_cpuid_has_xsave(%struct.kvm_vcpu*) #1

declare dso_local i32 @guest_cpuid_has_smep(%struct.kvm_vcpu*) #1

declare dso_local i32 @guest_cpuid_has_fsgsbase(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_long_mode(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_paging(%struct.kvm_vcpu*) #1

declare dso_local i32 @load_pdptrs(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @guest_cpuid_has_pcid(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mmu_reset_context(%struct.kvm_vcpu*) #1

declare dso_local i32 @update_cpuid(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
