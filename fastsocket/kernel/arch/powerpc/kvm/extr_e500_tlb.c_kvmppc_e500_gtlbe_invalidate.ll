; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_e500_gtlbe_invalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_e500_gtlbe_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcpu_e500 = type { %struct.tlbe** }
%struct.tlbe = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_vcpu_e500*, i32, i32)* @kvmppc_e500_gtlbe_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_e500_gtlbe_invalidate(%struct.kvmppc_vcpu_e500* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tlbe*, align 8
  store %struct.kvmppc_vcpu_e500* %0, %struct.kvmppc_vcpu_e500** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %10 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %9, i32 0, i32 0
  %11 = load %struct.tlbe**, %struct.tlbe*** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.tlbe*, %struct.tlbe** %11, i64 %13
  %15 = load %struct.tlbe*, %struct.tlbe** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %15, i64 %17
  store %struct.tlbe* %18, %struct.tlbe** %8, align 8
  %19 = load %struct.tlbe*, %struct.tlbe** %8, align 8
  %20 = call i32 @get_tlb_iprot(%struct.tlbe* %19)
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %44

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %29 = load %struct.tlbe*, %struct.tlbe** %8, align 8
  %30 = call i32 @get_tlb_eaddr(%struct.tlbe* %29)
  %31 = load %struct.tlbe*, %struct.tlbe** %8, align 8
  %32 = call i32 @get_tlb_end(%struct.tlbe* %31)
  %33 = load %struct.tlbe*, %struct.tlbe** %8, align 8
  %34 = call i32 @get_tlb_tid(%struct.tlbe* %33)
  %35 = call i32 @kvmppc_e500_tlb1_invalidate(%struct.kvmppc_vcpu_e500* %28, i32 %30, i32 %32, i32 %34)
  br label %41

36:                                               ; preds = %24
  %37 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @kvmppc_e500_stlbe_invalidate(%struct.kvmppc_vcpu_e500* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %27
  %42 = load %struct.tlbe*, %struct.tlbe** %8, align 8
  %43 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %23
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_tlb_iprot(%struct.tlbe*) #1

declare dso_local i32 @kvmppc_e500_tlb1_invalidate(%struct.kvmppc_vcpu_e500*, i32, i32, i32) #1

declare dso_local i32 @get_tlb_eaddr(%struct.tlbe*) #1

declare dso_local i32 @get_tlb_end(%struct.tlbe*) #1

declare dso_local i32 @get_tlb_tid(%struct.tlbe*) #1

declare dso_local i32 @kvmppc_e500_stlbe_invalidate(%struct.kvmppc_vcpu_e500*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
