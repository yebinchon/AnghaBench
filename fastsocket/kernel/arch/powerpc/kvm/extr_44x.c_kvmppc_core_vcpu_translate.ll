; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_44x.c_kvmppc_core_vcpu_translate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_44x.c_kvmppc_core_vcpu_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_translation = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_core_vcpu_translate(%struct.kvm_vcpu* %0, %struct.kvm_translation* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_translation*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_translation* %1, %struct.kvm_translation** %5, align 8
  %10 = load %struct.kvm_translation*, %struct.kvm_translation** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_translation, %struct.kvm_translation* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.kvm_translation*, %struct.kvm_translation** %5, align 8
  %14 = getelementptr inbounds %struct.kvm_translation, %struct.kvm_translation* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 32
  %17 = and i32 %16, 255
  store i32 %17, i32* %8, align 4
  %18 = load %struct.kvm_translation*, %struct.kvm_translation** %5, align 8
  %19 = getelementptr inbounds %struct.kvm_translation, %struct.kvm_translation* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 40
  %22 = and i32 %21, 1
  store i32 %22, i32* %9, align 4
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @kvmppc_44x_tlb_index(%struct.kvm_vcpu* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.kvm_translation*, %struct.kvm_translation** %5, align 8
  %32 = getelementptr inbounds %struct.kvm_translation, %struct.kvm_translation* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  store i32 0, i32* %3, align 4
  br label %42

33:                                               ; preds = %2
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @kvmppc_mmu_xlate(%struct.kvm_vcpu* %34, i32 %35, i32 %36)
  %38 = load %struct.kvm_translation*, %struct.kvm_translation** %5, align 8
  %39 = getelementptr inbounds %struct.kvm_translation, %struct.kvm_translation* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.kvm_translation*, %struct.kvm_translation** %5, align 8
  %41 = getelementptr inbounds %struct.kvm_translation, %struct.kvm_translation* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %33, %30
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @kvmppc_44x_tlb_index(%struct.kvm_vcpu*, i32, i32, i32) #1

declare dso_local i32 @kvmppc_mmu_xlate(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
