; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_e500_emul_tlbivax.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_e500_emul_tlbivax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.kvmppc_vcpu_e500 = type { i32* }

@EMULATE_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_e500_emul_tlbivax(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = call %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu* %12)
  store %struct.kvmppc_vcpu_e500* %13, %struct.kvmppc_vcpu_e500** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %16
  %27 = phi i32 [ %24, %16 ], [ 0, %25 ]
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %27, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = ashr i32 %37, 2
  %39 = and i32 %38, 1
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %11, align 4
  %41 = ashr i32 %40, 3
  %42 = and i32 %41, 1
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %61, %45
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %49 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %47, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %46
  %57 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @kvmppc_e500_gtlbe_invalidate(%struct.kvmppc_vcpu_e500* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %46

64:                                               ; preds = %46
  br label %82

65:                                               ; preds = %26
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %66, -4096
  store i32 %67, i32* %11, align 4
  %68 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %72 = call i32 @get_cur_pid(%struct.kvm_vcpu* %71)
  %73 = call i32 @kvmppc_e500_tlb_index(%struct.kvmppc_vcpu_e500* %68, i32 %69, i32 %70, i32 %72, i32 -1)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @kvmppc_e500_gtlbe_invalidate(%struct.kvmppc_vcpu_e500* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %65
  br label %82

82:                                               ; preds = %81, %64
  %83 = call i32 (...) @_tlbil_all()
  %84 = load i32, i32* @EMULATE_DONE, align 4
  ret i32 %84
}

declare dso_local %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_e500_gtlbe_invalidate(%struct.kvmppc_vcpu_e500*, i32, i32) #1

declare dso_local i32 @kvmppc_e500_tlb_index(%struct.kvmppc_vcpu_e500*, i32, i32, i32, i32) #1

declare dso_local i32 @get_cur_pid(%struct.kvm_vcpu*) #1

declare dso_local i32 @_tlbil_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
