; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_booke_emulate.c_kvmppc_booke_emulate_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_booke_emulate.c_kvmppc_booke_emulate_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@EMULATED_RFI_EXITS = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4
@EMULATED_MFMSR_EXITS = common dso_local global i32 0, align 4
@EMULATED_MTMSR_EXITS = common dso_local global i32 0, align 4
@MSR_EE = common dso_local global i32 0, align 4
@EMULATED_WRTEE_EXITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_booke_emulate_op(%struct.kvm_run* %0, %struct.kvm_vcpu* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.kvm_run*, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_run* %0, %struct.kvm_run** %5, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @get_op(i32 %13)
  switch i32 %14, label %112 [
    i32 19, label %15
    i32 31, label %28
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @get_xop(i32 %16)
  switch i32 %17, label %25 [
    i32 132, label %18
  ]

18:                                               ; preds = %15
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %20 = call i32 @kvmppc_emul_rfi(%struct.kvm_vcpu* %19)
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %22 = load i32, i32* @EMULATED_RFI_EXITS, align 4
  %23 = call i32 @kvmppc_set_exit_type(%struct.kvm_vcpu* %21, i32 %22)
  %24 = load i32*, i32** %8, align 8
  store i32 0, i32* %24, align 4
  br label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %25, %18
  br label %114

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @get_xop(i32 %29)
  switch i32 %30, label %109 [
    i32 131, label %31
    i32 130, label %48
    i32 129, label %64
    i32 128, label %91
  ]

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @get_rt(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %37, i32* %44, align 4
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %46 = load i32, i32* @EMULATED_MFMSR_EXITS, align 4
  %47 = call i32 @kvmppc_set_exit_type(%struct.kvm_vcpu* %45, i32 %46)
  br label %111

48:                                               ; preds = %28
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @get_rs(i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %52 = load i32, i32* @EMULATED_MTMSR_EXITS, align 4
  %53 = call i32 @kvmppc_set_exit_type(%struct.kvm_vcpu* %51, i32 %52)
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @kvmppc_set_msr(%struct.kvm_vcpu* %54, i32 %62)
  br label %111

64:                                               ; preds = %28
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @get_rs(i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MSR_EE, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %75 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MSR_EE, align 4
  %83 = and i32 %81, %82
  %84 = or i32 %73, %83
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %86 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 8
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %89 = load i32, i32* @EMULATED_WRTEE_EXITS, align 4
  %90 = call i32 @kvmppc_set_exit_type(%struct.kvm_vcpu* %88, i32 %89)
  br label %111

91:                                               ; preds = %28
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %93 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @MSR_EE, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @MSR_EE, align 4
  %101 = and i32 %99, %100
  %102 = or i32 %98, %101
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %104 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 8
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %107 = load i32, i32* @EMULATED_WRTEE_EXITS, align 4
  %108 = call i32 @kvmppc_set_exit_type(%struct.kvm_vcpu* %106, i32 %107)
  br label %111

109:                                              ; preds = %28
  %110 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %109, %91, %64, %48, %31
  br label %114

112:                                              ; preds = %4
  %113 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %112, %111, %27
  %115 = load i32, i32* %9, align 4
  ret i32 %115
}

declare dso_local i32 @get_op(i32) #1

declare dso_local i32 @get_xop(i32) #1

declare dso_local i32 @kvmppc_emul_rfi(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_set_exit_type(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @get_rt(i32) #1

declare dso_local i32 @get_rs(i32) #1

declare dso_local i32 @kvmppc_set_msr(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
