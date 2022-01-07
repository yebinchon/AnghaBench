; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_handle_cr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_handle_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@EXIT_QUALIFICATION = common dso_local global i32 0, align 4
@KVM_EXIT_SET_TPR = common dso_local global i64 0, align 8
@X86_CR0_TS = common dso_local global i32 0, align 4
@LMSW_SOURCE_DATA_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"unhandled control register: op %d cr %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_cr(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %11 = load i32, i32* @EXIT_QUALIFICATION, align 4
  %12 = call i64 @vmcs_readl(i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = and i64 %13, 15
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i64, i64* %4, align 8
  %17 = lshr i64 %16, 8
  %18 = and i64 %17, 15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i64, i64* %4, align 8
  %21 = lshr i64 %20, 4
  %22 = and i64 %21, 3
  switch i64 %22, label %151 [
    i64 0, label %23
    i64 2, label %89
    i64 1, label %101
    i64 3, label %133
  ]

23:                                               ; preds = %1
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @kvm_register_read(%struct.kvm_vcpu* %24, i32 %25)
  %27 = ptrtoint i8* %26 to i64
  store i64 %27, i64* %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i64, i64* %5, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @trace_kvm_cr_write(i32 %28, i32 %30)
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %88 [
    i32 0, label %33
    i32 3, label %40
    i32 4, label %47
    i32 8, label %54
  ]

33:                                               ; preds = %23
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @kvm_set_cr0(%struct.kvm_vcpu* %34, i64 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @complete_insn_gp(%struct.kvm_vcpu* %37, i32 %38)
  store i32 1, i32* %2, align 4
  br label %164

40:                                               ; preds = %23
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @kvm_set_cr3(%struct.kvm_vcpu* %41, i64 %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @complete_insn_gp(%struct.kvm_vcpu* %44, i32 %45)
  store i32 1, i32* %2, align 4
  br label %164

47:                                               ; preds = %23
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @kvm_set_cr4(%struct.kvm_vcpu* %48, i64 %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @complete_insn_gp(%struct.kvm_vcpu* %51, i32 %52)
  store i32 1, i32* %2, align 4
  br label %164

54:                                               ; preds = %23
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = call i8* @kvm_get_cr8(%struct.kvm_vcpu* %55)
  store i8* %56, i8** %9, align 8
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i8* @kvm_register_read(%struct.kvm_vcpu* %57, i32 %58)
  store i8* %59, i8** %10, align 8
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @kvm_set_cr8(%struct.kvm_vcpu* %60, i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %66 = call i32 @kvm_inject_gp(%struct.kvm_vcpu* %65, i32 0)
  br label %70

67:                                               ; preds = %54
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %69 = call i32 @skip_emulated_instruction(%struct.kvm_vcpu* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %72 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @irqchip_in_kernel(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 1, i32* %2, align 4
  br label %164

77:                                               ; preds = %70
  %78 = load i8*, i8** %9, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = icmp ule i8* %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 1, i32* %2, align 4
  br label %164

82:                                               ; preds = %77
  %83 = load i64, i64* @KVM_EXIT_SET_TPR, align 8
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %85 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i64 %83, i64* %87, align 8
  store i32 0, i32* %2, align 4
  br label %164

88:                                               ; preds = %23
  br label %152

89:                                               ; preds = %1
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %92 = load i32, i32* @X86_CR0_TS, align 4
  %93 = xor i32 %92, -1
  %94 = call i32 @kvm_read_cr0_bits(%struct.kvm_vcpu* %91, i32 %93)
  %95 = call i32 @vmx_set_cr0(%struct.kvm_vcpu* %90, i32 %94)
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %97 = call i32 @kvm_read_cr0(%struct.kvm_vcpu* %96)
  %98 = call i32 @trace_kvm_cr_write(i32 0, i32 %97)
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %100 = call i32 @skip_emulated_instruction(%struct.kvm_vcpu* %99)
  store i32 1, i32* %2, align 4
  br label %164

101:                                              ; preds = %1
  %102 = load i32, i32* %6, align 4
  switch i32 %102, label %132 [
    i32 3, label %103
    i32 8, label %119
  ]

103:                                              ; preds = %101
  %104 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %107 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @kvm_register_write(%struct.kvm_vcpu* %104, i32 %105, i64 %109)
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %113 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @trace_kvm_cr_read(i32 %111, i64 %115)
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %118 = call i32 @skip_emulated_instruction(%struct.kvm_vcpu* %117)
  store i32 1, i32* %2, align 4
  br label %164

119:                                              ; preds = %101
  %120 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %121 = call i8* @kvm_get_cr8(%struct.kvm_vcpu* %120)
  %122 = ptrtoint i8* %121 to i64
  store i64 %122, i64* %5, align 8
  %123 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load i64, i64* %5, align 8
  %126 = call i32 @kvm_register_write(%struct.kvm_vcpu* %123, i32 %124, i64 %125)
  %127 = load i32, i32* %6, align 4
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @trace_kvm_cr_read(i32 %127, i64 %128)
  %130 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %131 = call i32 @skip_emulated_instruction(%struct.kvm_vcpu* %130)
  store i32 1, i32* %2, align 4
  br label %164

132:                                              ; preds = %101
  br label %152

133:                                              ; preds = %1
  %134 = load i64, i64* %4, align 8
  %135 = load i64, i64* @LMSW_SOURCE_DATA_SHIFT, align 8
  %136 = lshr i64 %134, %135
  %137 = and i64 %136, 15
  store i64 %137, i64* %5, align 8
  %138 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %139 = call i32 @kvm_read_cr0(%struct.kvm_vcpu* %138)
  %140 = sext i32 %139 to i64
  %141 = and i64 %140, -16
  %142 = load i64, i64* %5, align 8
  %143 = or i64 %141, %142
  %144 = trunc i64 %143 to i32
  %145 = call i32 @trace_kvm_cr_write(i32 0, i32 %144)
  %146 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %147 = load i64, i64* %5, align 8
  %148 = call i32 @kvm_lmsw(%struct.kvm_vcpu* %146, i64 %147)
  %149 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %150 = call i32 @skip_emulated_instruction(%struct.kvm_vcpu* %149)
  store i32 1, i32* %2, align 4
  br label %164

151:                                              ; preds = %1
  br label %152

152:                                              ; preds = %151, %132, %88
  %153 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %154 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  store i64 0, i64* %156, align 8
  %157 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %158 = load i64, i64* %4, align 8
  %159 = lshr i64 %158, 4
  %160 = trunc i64 %159 to i32
  %161 = and i32 %160, 3
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @pr_unimpl(%struct.kvm_vcpu* %157, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %161, i32 %162)
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %152, %133, %119, %103, %89, %82, %81, %76, %47, %40, %33
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i64 @vmcs_readl(i32) #1

declare dso_local i8* @kvm_register_read(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @trace_kvm_cr_write(i32, i32) #1

declare dso_local i32 @kvm_set_cr0(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @complete_insn_gp(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_set_cr3(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_set_cr4(%struct.kvm_vcpu*, i64) #1

declare dso_local i8* @kvm_get_cr8(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_set_cr8(%struct.kvm_vcpu*, i8*) #1

declare dso_local i32 @kvm_inject_gp(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @skip_emulated_instruction(%struct.kvm_vcpu*) #1

declare dso_local i32 @irqchip_in_kernel(i32) #1

declare dso_local i32 @vmx_set_cr0(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_read_cr0_bits(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_read_cr0(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_register_write(%struct.kvm_vcpu*, i32, i64) #1

declare dso_local i32 @trace_kvm_cr_read(i32, i64) #1

declare dso_local i32 @kvm_lmsw(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @pr_unimpl(%struct.kvm_vcpu*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
