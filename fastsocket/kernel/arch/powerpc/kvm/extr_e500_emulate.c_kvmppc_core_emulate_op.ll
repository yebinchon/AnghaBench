; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_emulate.c_kvmppc_core_emulate_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_emulate.c_kvmppc_core_emulate_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { i32 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_core_emulate_op(%struct.kvm_run* %0, %struct.kvm_vcpu* %1, i32 %2, i32* %3) #0 {
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
  switch i32 %14, label %42 [
    i32 31, label %15
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @get_xop(i32 %16)
  switch i32 %17, label %39 [
    i32 130, label %18
    i32 128, label %21
    i32 129, label %24
    i32 131, label %30
  ]

18:                                               ; preds = %15
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %20 = call i32 @kvmppc_e500_emul_tlbre(%struct.kvm_vcpu* %19)
  store i32 %20, i32* %9, align 4
  br label %41

21:                                               ; preds = %15
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %23 = call i32 @kvmppc_e500_emul_tlbwe(%struct.kvm_vcpu* %22)
  store i32 %23, i32* %9, align 4
  br label %41

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @get_rb(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @kvmppc_e500_emul_tlbsx(%struct.kvm_vcpu* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  br label %41

30:                                               ; preds = %15
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @get_ra(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @get_rb(i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @kvmppc_e500_emul_tlbivax(%struct.kvm_vcpu* %35, i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  br label %41

39:                                               ; preds = %15
  %40 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %39, %30, %24, %21, %18
  br label %44

42:                                               ; preds = %4
  %43 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %42, %41
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @EMULATE_FAIL, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @kvmppc_booke_emulate_op(%struct.kvm_run* %49, %struct.kvm_vcpu* %50, i32 %51, i32* %52)
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %48, %44
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local i32 @get_op(i32) #1

declare dso_local i32 @get_xop(i32) #1

declare dso_local i32 @kvmppc_e500_emul_tlbre(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_e500_emul_tlbwe(%struct.kvm_vcpu*) #1

declare dso_local i32 @get_rb(i32) #1

declare dso_local i32 @kvmppc_e500_emul_tlbsx(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @get_ra(i32) #1

declare dso_local i32 @kvmppc_e500_emul_tlbivax(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvmppc_booke_emulate_op(%struct.kvm_run*, %struct.kvm_vcpu*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
