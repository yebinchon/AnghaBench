; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_e500_tlb_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_e500_tlb_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_vcpu_e500 = type { %struct.tlbe** }
%struct.tlbe = type { i32 }

@SPRN_MAS0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_e500_tlb_load(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tlbe*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu* %9)
  store %struct.kvmppc_vcpu_e500* %10, %struct.kvmppc_vcpu_e500** %5, align 8
  %11 = call i32 (...) @local_irq_disable()
  %12 = load i32, i32* @SPRN_MAS0, align 4
  %13 = call i32 @mfspr(i32 %12)
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %41, %2
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (...) @tlb1_max_shadow_size()
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %20 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %19, i32 0, i32 0
  %21 = load %struct.tlbe**, %struct.tlbe*** %20, align 8
  %22 = getelementptr inbounds %struct.tlbe*, %struct.tlbe** %21, i64 1
  %23 = load %struct.tlbe*, %struct.tlbe** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %23, i64 %25
  store %struct.tlbe* %26, %struct.tlbe** %8, align 8
  %27 = load %struct.tlbe*, %struct.tlbe** %8, align 8
  %28 = call i64 @get_tlb_v(%struct.tlbe* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %18
  %31 = load i32, i32* @SPRN_MAS0, align 4
  %32 = call i32 @MAS0_TLBSEL(i32 1)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @to_htlb1_esel(i32 %33)
  %35 = call i32 @MAS0_ESEL(i32 %34)
  %36 = or i32 %32, %35
  %37 = call i32 @mtspr(i32 %31, i32 %36)
  %38 = load %struct.tlbe*, %struct.tlbe** %8, align 8
  %39 = call i32 @__write_host_tlbe(%struct.tlbe* %38)
  br label %40

40:                                               ; preds = %30, %18
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %14

44:                                               ; preds = %14
  %45 = load i32, i32* @SPRN_MAS0, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @mtspr(i32 %45, i32 %46)
  %48 = call i32 (...) @local_irq_enable()
  ret void
}

declare dso_local %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @tlb1_max_shadow_size(...) #1

declare dso_local i64 @get_tlb_v(%struct.tlbe*) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @MAS0_TLBSEL(i32) #1

declare dso_local i32 @MAS0_ESEL(i32) #1

declare dso_local i32 @to_htlb1_esel(i32) #1

declare dso_local i32 @__write_host_tlbe(%struct.tlbe*) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
