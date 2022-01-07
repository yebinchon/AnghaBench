; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_process.c_collect_interruption.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_process.c_collect_interruption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_pt_regs = type { i64, i32 }

@IA64_PSR_IC = common dso_local global i64 0, align 8
@IA64_PSR_ID = common dso_local global i64 0, align 8
@IA64_PSR_DA = common dso_local global i64 0, align 8
@IA64_PSR_DD = common dso_local global i64 0, align 8
@IA64_PSR_SS = common dso_local global i64 0, align 8
@IA64_PSR_ED = common dso_local global i64 0, align 8
@ifs = common dso_local global i32 0, align 4
@IA64_IFS_V = common dso_local global i64 0, align 8
@cr_iipa = common dso_local global i32 0, align 4
@dcr = common dso_local global i32 0, align 4
@INITIAL_PSR_VALUE_AT_INTERRUPTION = common dso_local global i64 0, align 8
@IA64_DCR_BE = common dso_local global i64 0, align 8
@IA64_DCR_PP = common dso_local global i64 0, align 8
@IA64_PSR_PP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @collect_interruption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_interruption(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.kvm_pt_regs*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = call %struct.kvm_pt_regs* @vcpu_regs(%struct.kvm_vcpu* %8)
  store %struct.kvm_pt_regs* %9, %struct.kvm_pt_regs** %7, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = call i64 @vcpu_get_psr(%struct.kvm_vcpu* %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %13 = call i32 @vcpu_bsw0(%struct.kvm_vcpu* %12)
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @IA64_PSR_IC, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %1
  %19 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %7, align 8
  %20 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @IA64_PSR_ID, align 8
  %25 = load i64, i64* @IA64_PSR_DA, align 8
  %26 = or i64 %24, %25
  %27 = load i64, i64* @IA64_PSR_DD, align 8
  %28 = or i64 %26, %27
  %29 = load i64, i64* @IA64_PSR_SS, align 8
  %30 = or i64 %28, %29
  %31 = load i64, i64* @IA64_PSR_ED, align 8
  %32 = or i64 %30, %31
  %33 = and i64 %23, %32
  %34 = or i64 %22, %33
  store i64 %34, i64* %6, align 8
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @vcpu_set_ipsr(%struct.kvm_vcpu* %35, i64 %36)
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %39 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %7, align 8
  %40 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @vcpu_set_iip(%struct.kvm_vcpu* %38, i32 %41)
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %44 = load i32, i32* @ifs, align 4
  %45 = call i64 @VCPU(%struct.kvm_vcpu* %43, i32 %44)
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* @IA64_IFS_V, align 8
  %47 = xor i64 %46, -1
  %48 = load i64, i64* %5, align 8
  %49 = and i64 %48, %47
  store i64 %49, i64* %5, align 8
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @vcpu_set_ifs(%struct.kvm_vcpu* %50, i64 %51)
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %55 = load i32, i32* @cr_iipa, align 4
  %56 = call i32 @VMX(%struct.kvm_vcpu* %54, i32 %55)
  %57 = call i32 @vcpu_set_iipa(%struct.kvm_vcpu* %53, i32 %56)
  br label %58

58:                                               ; preds = %18, %1
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %60 = load i32, i32* @dcr, align 4
  %61 = call i64 @VCPU(%struct.kvm_vcpu* %59, i32 %60)
  store i64 %61, i64* %4, align 8
  %62 = load i64, i64* @INITIAL_PSR_VALUE_AT_INTERRUPTION, align 8
  %63 = load i64, i64* %6, align 8
  %64 = and i64 %63, %62
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @IA64_DCR_BE, align 8
  %67 = and i64 %65, %66
  %68 = load i64, i64* %6, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @IA64_DCR_PP, align 8
  %72 = and i64 %70, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %58
  %75 = load i64, i64* @IA64_PSR_PP, align 8
  %76 = load i64, i64* %6, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %6, align 8
  br label %83

78:                                               ; preds = %58
  %79 = load i64, i64* @IA64_PSR_PP, align 8
  %80 = xor i64 %79, -1
  %81 = load i64, i64* %6, align 8
  %82 = and i64 %81, %80
  store i64 %82, i64* %6, align 8
  br label %83

83:                                               ; preds = %78, %74
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @vcpu_set_psr(%struct.kvm_vcpu* %84, i64 %85)
  ret void
}

declare dso_local %struct.kvm_pt_regs* @vcpu_regs(%struct.kvm_vcpu*) #1

declare dso_local i64 @vcpu_get_psr(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_bsw0(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_set_ipsr(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @vcpu_set_iip(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @VCPU(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vcpu_set_ifs(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @vcpu_set_iipa(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @VMX(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vcpu_set_psr(%struct.kvm_vcpu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
