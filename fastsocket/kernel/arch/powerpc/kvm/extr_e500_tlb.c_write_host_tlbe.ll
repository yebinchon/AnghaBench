; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_write_host_tlbe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_write_host_tlbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcpu_e500 = type { %struct.tlbe** }
%struct.tlbe = type { i32 }

@SPRN_MAS0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_vcpu_e500*, i32, i32)* @write_host_tlbe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_host_tlbe(%struct.kvmppc_vcpu_e500* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tlbe*, align 8
  %8 = alloca i32, align 4
  store %struct.kvmppc_vcpu_e500* %0, %struct.kvmppc_vcpu_e500** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %4, align 8
  %10 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %9, i32 0, i32 0
  %11 = load %struct.tlbe**, %struct.tlbe*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.tlbe*, %struct.tlbe** %11, i64 %13
  %15 = load %struct.tlbe*, %struct.tlbe** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %15, i64 %17
  store %struct.tlbe* %18, %struct.tlbe** %7, align 8
  %19 = call i32 (...) @local_irq_disable()
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.tlbe*, %struct.tlbe** %7, align 8
  %24 = call i32 @__write_host_tlbe(%struct.tlbe* %23)
  br label %40

25:                                               ; preds = %3
  %26 = load i32, i32* @SPRN_MAS0, align 4
  %27 = call i32 @mfspr(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @SPRN_MAS0, align 4
  %29 = call i32 @MAS0_TLBSEL(i32 1)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @to_htlb1_esel(i32 %30)
  %32 = call i32 @MAS0_ESEL(i32 %31)
  %33 = or i32 %29, %32
  %34 = call i32 @mtspr(i32 %28, i32 %33)
  %35 = load %struct.tlbe*, %struct.tlbe** %7, align 8
  %36 = call i32 @__write_host_tlbe(%struct.tlbe* %35)
  %37 = load i32, i32* @SPRN_MAS0, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @mtspr(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %25, %22
  %41 = call i32 (...) @local_irq_enable()
  ret void
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @__write_host_tlbe(%struct.tlbe*) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @MAS0_TLBSEL(i32) #1

declare dso_local i32 @MAS0_ESEL(i32) #1

declare dso_local i32 @to_htlb1_esel(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
